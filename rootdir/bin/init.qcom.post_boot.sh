#! /vendor/bin/sh

# Copyright (c) 2012-2013, 2016-2018, The Linux Foundation. All rights reserved.
# Copyright (C) 2019 Dusan Uveric <dusan.uveric9@gmail.com>.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

# Post boot configuration script targeted at sdm660/jason

# Enable bus-dcvs
  for cpubw in /sys/class/devfreq/*qcom,cpubw*
    do
      echo "bw_hwmon" > $cpubw/governor
      echo 50 > $cpubw/polling_interval
      echo 762 > $cpubw/min_freq
      echo "1525 3143 5859 7759 9887 10327 11863 13763" > $cpubw/bw_hwmon/mbps_zones
      echo 4 > $cpubw/bw_hwmon/sample_ms
      echo 85 > $cpubw/bw_hwmon/io_percent
      echo 100 > $cpubw/bw_hwmon/decay_rate
      echo 50 > $cpubw/bw_hwmon/bw_step
      echo 20 > $cpubw/bw_hwmon/hist_memory
      echo 0 > $cpubw/bw_hwmon/hyst_length
      echo 80 > $cpubw/bw_hwmon/down_thres
      echo 0 > $cpubw/bw_hwmon/low_power_ceil_mbps
      echo 34 > $cpubw/bw_hwmon/low_power_io_percent
      echo 20 > $cpubw/bw_hwmon/low_power_delay
      echo 0 > $cpubw/bw_hwmon/guard_band_mbps
      echo 250 > $cpubw/bw_hwmon/up_scale
      echo 1600 > $cpubw/bw_hwmon/idle_mbps
    done

  for memlat in /sys/class/devfreq/*qcom,memlat-cpu*
    do
      echo "mem_latency" > $memlat/governor
      echo 10 > $memlat/polling_interval
      echo 400 > $memlat/mem_latency/ratio_ceil
    done
  echo "cpufreq" > /sys/class/devfreq/soc:qcom,mincpubw/governor

  start vendor.cdsprpcd

# Post-setup services
  setprop vendor.post_boot.parsed 1

# Let kernel know our image version/variant/crm_version
  image_version="10:"
  image_version+=`getprop ro.build.id`
  image_version+=":"
  image_version+=`getprop ro.build.version.incremental`
  image_variant=`getprop ro.product.name`
  image_variant+="-"
  image_variant+=`getprop ro.build.type`
  oem_version=`getprop ro.build.version.codename`
  echo 10 > /sys/devices/soc0/select_image
  echo $image_version > /sys/devices/soc0/image_version
  echo $image_variant > /sys/devices/soc0/image_variant
  echo $oem_version > /sys/devices/soc0/image_crm_version

# Parse misc partition path and set property
  misc_link=$(ls -l /dev/block/bootdevice/by-name/misc)
  real_path=${misc_link##*>}
  setprop persist.vendor.mmi.misc_dev_path $real_path
