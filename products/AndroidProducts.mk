#Temporary work around... * cocide
ifeq ($(TARGET_PRODUCT),crossbones_generic)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_generic.mk
else ifeq ($(TARGET_PRODUCT),crossbones_crespo)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_crespo.mk
else ifeq ($(TARGET_PRODUCT),crossbones_crespo4g)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_crespo4g.mk
else ifeq ($(TARGET_PRODUCT),crossbones_maguro)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_maguro.mk
else ifeq ($(TARGET_PRODUCT),crossbones_toro)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_toro.mk
else ifeq ($(TARGET_PRODUCT),crossbones_toroplus)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_toroplus.mk
else ifeq ($(TARGET_PRODUCT),crossbones_torospr)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/crossbones_torospr.mk
endif

