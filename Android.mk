QCOM_MEDIA_ROOT := $(call my-dir)
$(warning target list is : $(MSM_VIDC_TARGET_LIST)) 
 
#Compile these for all targets under QCOM_BOARD_PLATFORMS list.
include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk
include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk

ifeq ($(call is-board-platform-in-list, $(MSM_VIDC_TARGET_LIST)),true) 
ifneq ($(filter msm8909 msm8916 msm8939,$(TARGET_BOARD_PLATFORM)),)
include $(QCOM_MEDIA_ROOT)/mm-video-v4l2/Android.mk
include $(QCOM_MEDIA_ROOT)/libc2dcolorconvert/Android.mk

endif
endif
