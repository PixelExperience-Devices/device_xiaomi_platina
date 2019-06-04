# System prop from miui

# SAR Sensor Fusion
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xiaomi.sar_fusion=true \
    sys.paper_mode_max_level=32

# AD and sensor config
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.display.ad=1 \
    ro.vendor.display.ad.sdr_calib_data=/vendor/etc/sdr_config.cfg \
    ro.vendor.display.ad.hdr_calib_data=/vendor/etc/hdr_config.cfg \
    ro.vendor.display.sensortype=2

# Enable backlight notify to displayfeature
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xiaomi.bl.notify=1

# Idle timeout, non-idle switch to idle time
PRODUCT_PROPERTY_OVERRIDES += \
    sdm.idle_time=1100

# System.prop for sdm660
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1

# Set network mode to (T/L/G/W/1X/EVDO, T/G/W/L/1X/EVDO) for 7+7 mode device on DSDS mode
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=22,22 \
    ro.telephony.default_cdma_sub=0

# Set device to DSDS mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds

# Set uim type
PRODUCT_PROPERTY_OVERRIDES += \
    il.subscription.types=RUIM

# PROPERTIES FOR IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.ims_volte_enable=1 \
    persist.radio.videopause.mode=1 \
    persist.data.iwlan.enable=true \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.radio.VT_HYBRID_ENABLE=1

# Iwaln vowifi corresponding
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.iwlan.enable=true

# Set dpm related prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.dpm.feature=1 \
    persist.vendor.dpm.nsrm.bkg.evt=3955

# Set RIJL video call related prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.NO_STAPA=1

# Report redirection call number
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.redir_party_num=1

# Enable manual network selection function and distinguish 2G/3G/4G
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.rat_on=combine

# For special cdma card sms issue
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.force_on_dc=true

# Disable strictmode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.strictmode.disable=true

# Set SAR feature
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.dynamic_sar=false

# System property determining camera HAL to be used for a Video call
# 1 is camera1
# 2 or anything else is camera2
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    dalvik.vm.heapsize=36m \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    debug.sf.recomputecrop=0

# ro.hdmi.enable=true
# System props for the cne module
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

# System props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml \
    vendor.mm.enable.qcom_parser=16776191 \
    persist.mm.enable.prefetch=true

# Property to enable narrow search range for video encoding
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.enc.target_support_bframe=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.dec.enable.downscalar=0

# Enable PQ feature by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.vidc.enc.disable.pq=false

# Additional buffers shared between Camera and Video
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.enc.dcvs.extra-buff-count=2

# Netflix custom property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q660-13149-1

# System props for the data modules
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.vendor.data.mode=concurrent

# System props for time-services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# System property for maximum number of HFP client connections
PRODUCT_PROPERTY_OVERRIDES += \
    bt.max.hfpclient.connections=1

# Force disable Bluetooth AAC by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.a2dp.aac_disable=true

# System property for cabl
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0

# System props for telephony
# System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
    elephony.lteOnCdmaDevice=1

# Simulate sdcard on /data/media
PRODUCT_PROPERTY_OVERRIDES += \
    persist.fuse_sdcard=true

# System prop for wipower support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.emb_wp_mode=false \
    ro.bluetooth.wipower=false

# Sysprop for WLAN
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wlan.vendor=qcom \
    ro.wlan.chip=39xx \
    ro.wlan.mimo=1

# Snapdragon value add features
# Minimum duration for offload playback in secs
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.min.duration.secs=30

# Enable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true

# Enable music through deep buffer
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true

# Set AudioFlinger client heap size
PRODUCT_PROPERTY_OVERRIDES += \
    ro.af.client_heap_size_kbyte=7168

# System prop for RmNet Data
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rmnet.data.enable=true \
    persist.data.wda.enable=true \
    persist.data.df.dl_mode=5 \
    persist.data.df.ul_mode=5 \
    persist.data.df.agg.dl_pkt=10 \
    persist.data.df.agg.dl_size=4096 \
    persist.data.df.mux_count=8 \
    persist.data.df.iwlan_mux=9 \
    persist.data.df.dev_name=rmnet_usb0

# System property determining camera HAL to be used for a Video call
# 1 is camera1
# 2 or anything else is camera2
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.VT_CAM_INTERFACE=2

# Property to enable user to access Google WFD settings
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1

# Enable stm-events
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.coresight.config=stm-events

# Property to choose between virtual/external wfd display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.wfd.virtual=0

# Property for vendor specific library
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.at_library=libqti-at.so

# Min/max cpu in core control
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.core_ctl_min_cpu=2
    ro.vendor.qti.core_ctl_max_cpu=4

# Bringup properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.atfwd.start=true

# Property to enable VDS WFD solution
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.enable_vds=1

# Settings to enable sensors
# Device Orientation sensor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.dev_ori=false

# Persistent Motion Detector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.pmd=true

# Stationary Detector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.sta_detect=true

# Motion Detector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.mot_detect=true

# Xiaomi non-ui
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.noneui=true

# Xiaomi multi-tap
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.multitap=true

# Xiaomi pick up gusture
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.pickup=true

# HAL1 apps list
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.hal1.packagelist=com.whatsapp,com.intsig.camscanner,com.instagram.android

# Enable HAL3
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.vendor.camera.eis.enable=1 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.eis.enable=1

# Expose aux camera for below packages
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera

# Disable UBWC for camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.preview.ubwc=0 \
    persist.camera.hist.high=20 \
    persist.camera.hist.drc=1.2 \
    persist.camera.stats.test=5

# Set maximum supported adapter voltage
PRODUCT_PROPERTY_OVERRIDES += \
    persist.chg.max_volt_mv=9000

# System prop for Bluetooth SOC type
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.bluetooth.soc=cherokee

# Property for backup NTP Server
PRODUCT_PROPERTY_OVERRIDES += \
    persist.backup.ntpServer="0.pool.ntp.org"
# Enable IZat OptInApp overlay
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.overlay.izat.optin=rro

# Disable Skip Validate
PRODUCT_PROPERTY_OVERRIDES += \
    sdm.debug.disable_skip_validate=1

# Display Properties as per treble compliance
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.disable_skip_validate=1 \
    vendor.display.hwc_disable_hdr=1

# Set cutoff voltage to 3400mV
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cutoff_voltage_mv=3400

# Sensor properties
PRODUCT_PROPERTY_OVERRIDES += \
    sys.autobrightness_optimize=true

# Adjust voice call volume steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=11

# Sensor properties
PRODUCT_PROPERTY_OVERRIDES += \
    sys.autobrightness_optimize=true \
    sys.tp.grip_area=0

# Enable b-services aging propagation
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true


# System property for displayfeature hidl
PRODUCT_PROPERTY_OVERRIDES += \
    sys.displayfeature_hidl=true

# System property for HBM mode
PRODUCT_PROPERTY_OVERRIDES += \
    sys.displayfeature.hbm.enable=false

# Set SAR feature
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.dynamic_sar=true

# ADDITIONAL_BUILD_PROPERTIES
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.report_codec=1 \
    persist.vendor.radio.redir_party_num=1 \
    ro.treble.enabled=true \
    keyguard.no_require_sim=true \
    persist.radio.apm_sim_not_pwdn=1

# Vendor prop from miui
#
# ADDITIONAL VENDOR BUILD PROPERTIES
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.job_delay=true \
    persist.sys.mcd_config_file=/system/etc/mcd_default.conf \
    ro.cit.stablebuild=true \
    persist.sys.labtest_flag=false \
    ro.cit.nonrootbuild=true \
    qemu.hw.mainkeys=0 \
    vendor.video.disable.ubwc=1 \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    ro.hardware.nfc_nci=nqx.default \
    persist.radio.multisim.config=dsds \
    persist.vendor.qcomsysd.enabled=1 \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.backup.ntpServer=0.pool.ntp.org \
    sys.vendor.shutdown.waittime=500 \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp \
    persist.sys.offlinelog.kernel=false \
    persist.sys.offlinelog.logcat=false \
    drm.service.enabled=true \
    ro.opengles.version=196610 \
    vendor.qcom.bluetooth.soc=cherokee \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=192 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    vendor.audio.tunnel.encode=false \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.offload.buffer.size.kb=64 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.offload.track.enable=false \
    audio.deep_buffer.media=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=true \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.flac.sw.decoder.24bit=true \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.hw.aac.encoder=false \
    vendor.audio.noisy.broadcast.delay=600 \
    persist.vendor.audio.hifi.int_codec=true \
    persist.vendor.audio.button_jack.profile=volume \
    persist.vendor.audio.button_jack.switch=0 \
    vendor.audio.offload.pstimeout.secs=3 \
    ro.af.client_heap_size_kbyte=7168 \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    audio.adm.buffering.ms=6 \
    ro.vendor.audio.soundfx.usb=true \
    ro.vendor.audio.sos=true \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sdk.sensors.gestures=false \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    vendor.display.enable_default_color_mode=0 \
    ro.vendor.audio.sfx.speaker=true \
    ro.vendor.audio.sfx.spk.movie=true \
    persist.vendor.stapp.display=1 \
    ro.vendor.audio.soundtrigger=nuance \
    ro.vendor.audio.soundtrigger.lowpower=false \
    ro.vendor.audio.soundtrigger.phrase.level=40 \
    ro.vendor.audio.soundtrigger.user.level=60 \
    ro.vendor.audio.soundtrigger.phrase.adsp.level=40 \
    ro.vendor.audio.soundtrigger.user.adsp.level=60 \
    ro.vendor.audio.soundtrigger.training.level=50 \
    ro.hardware.fp.fpc=true \
    ro.hardware.fp.goodix=true \
    ro.colorpick_adjust=true \
    ro.df.effect.conflict=1 \
    persist.vendor.df.extcolor.proc=0
