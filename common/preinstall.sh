#!/system/bin/sh

first_run=$(getprop persist.glodroid.first_run)
echo ${first_run}
if [ "${first_run}" != "false" ]; then

   pm install -g "/vendor/etc/preinstall/AutoKit.apk_"

   setprop persist.glodroid.first_run false
fi