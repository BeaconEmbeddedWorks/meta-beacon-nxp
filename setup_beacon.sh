#!/bin/sh
# -*- mode: shell-script; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*-
#
# Description: This script sets the MACHINE value for local.conf and allows user to read and 
# accept EULA agreement
CWD=`pwd`
PROGNAME="setup-environment"
PACKAGE_CLASSES=${PACKAGE_CLASSES:-package_rpm}

usage()
{
    echo -e "
Usage: $PROGNAME -m [machine-name] -d [distro]

"

    
}

clean_up()
{
   unset EULA LIST_MACHINES VALID_MACHINE
   unset CWD TEMPLATES SHORTOPTS LONGOPTS ARGS PROGNAME
 #  unset generated_config updated
   unset MACHINE SDKMACHINE DISTRO OEROOT
   
}

	while getopts m:d:x fsl_setup_flag 
	do
		case ${fsl_setup_flag} in
			m) MACHINE="$OPTARG";
				echo -e "\n Machine is " $MACHINE
				echo "MACHINE='$MACHINE'" >> ${BUILDDIR}/conf/local.conf
			;;
			d) DISTRO="$OPTARG";
				echo -e "\n DISTRO is " $DISTRO
				echo "DISTRO='$DISTRO'" >> ${BUILDDIR}/conf/local.conf
			;;
			\?) usage && clean_up
           ;;
		esac
	done



# Handle EULA setting
EULA_ACCEPTED=

# EULA has been accepted already (ACCEPT_FSL_EULA is set in local.conf)
if grep -q '^\s*ACCEPT_FSL_EULA\s*=\s*["'\'']..*["'\'']' conf/local.conf; then
    EULA_ACCEPTED=1
fi

if [ -z "$EULA_ACCEPTED" ] && [ -n "$EULA" ]; then
    # The FSL EULA is not set as accepted in local.conf, but the EULA
    # variable is set in the environment, so we just configure
    # ACCEPT_FSL_EULA in local.conf according to $EULA.
    echo "ACCEPT_FSL_EULA = \"$EULA\"" >> conf/local.conf
elif [ -n "$EULA_ACCEPTED" ]; then
    # The FSL EULA has been accepted once, so ACCEPT_FSL_EULA is set
    # in local.conf.  No need to do anything.
    :
else
    # THE FSL EULA is not set as accepted in local.conf, and EULA is
    # not set in the environment, so we need to ask user if he/she
    # accepts the FSL EULA:
    cat <<EOF

Some BSPs depend on libraries and packages which are covered by Freescale's
End User License Agreement (EULA). To have the right to use these binaries in
your images, you need to read and accept the following...

EOF

    sleep 1

    # copy new EULA into community so setup uses latest i.MX EULA
    cp $CWD/../sources/meta-fsl-bsp-release/imx/EULA.txt $CWD/../sources/meta-freescale/EULA

    more -d $CWD/../sources/meta-freescale/EULA
    echo
    REPLY=
    while [ -z "$REPLY" ]; do
        echo -n "Do you accept the EULA you just read? (y/n) "
        read REPLY
        case "$REPLY" in
            y|Y)
            echo "EULA has been accepted."
            echo "ACCEPT_FSL_EULA = \"1\"" >> ${BUILDDIR}/conf/local.conf
            ;;
            n|N)
            echo "EULA has not been accepted."
            ;;
            *)
            REPLY=
            ;;
        esac
    done
fi

#Need to copy the local.conf.sample file as setup-environment script uses this 
#to verify a build directory already exists
cp $CWD/../sources/meta-beacon-nxp/conf/local.conf.sample $CWD/conf/local.conf.sample
if [ -f $CWD/../sources/meta-freescale/conf/machine/include/imx-base.inc ]; then
   rm $CWD/../sources/meta-freescale/conf/machine/include/imx-base.inc
fi
if [ -f $CWD/../sources/meta-freescale/classes/fsl-eula-unpack.bbclass ] ; then
    rm $CWD/../sources/meta-freescale/classes/fsl-eula-unpack.bbclass
fi

#this is a hack to copy Laird firmware to release directory

sh $CWD/../sources/meta-beacon-nxp/laird_hack.sh

clean_up
