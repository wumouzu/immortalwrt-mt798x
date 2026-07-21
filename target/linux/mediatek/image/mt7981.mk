define Device/cmcc_rax3000m-256m
  DEVICE_VENDOR := CMCC
  DEVICE_MODEL := RAX3000M NAND 256m
  DEVICE_DTS := mt7981-cmcc-rax3000m-256m
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  DEVICE_PACKAGES := $(MT7981_USB_PKGS) luci-app-ksmbd luci-i18n-ksmbd-zh-cn ksmbd-utils
  SUPPORTED_DEVICES := cmcc,rax3000m
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 240128k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += cmcc_rax3000m-256m