#Temporary work around... * cocide
ifeq ($(TARGET_PRODUCT),crossbones_crespo)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_crespo.mk
else ifeq ($(TARGET_PRODUCT),crossbones_crespo4g)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_crespo4g.mk
endif

