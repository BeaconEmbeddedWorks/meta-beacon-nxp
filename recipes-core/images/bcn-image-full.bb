# Copyright (C) 2015 Freescale Semiconductor
# Copyright 2017-2019 NXP
# Released under the MIT license (see COPYING.MIT for the terms)

require recipes-fsl/images/imx-image-multimedia.bb

CONFLICT_DISTRO_FEATURES = "directfb"

ML_PKGS ?= ""
ML_PKGS_mx8 = ""
ML_PKGS_mx8dxl-phantom = ""

OPENCV_PKGS ?= ""
OPENCV_PKGS:append:imxgpu = " \
    opencv-apps \
    opencv-samples \
    python3-opencv \
"
IMAGE_INSTALL += " \
    ${OPENCV_PKGS} \
    ${ML_PKGS} \
"
