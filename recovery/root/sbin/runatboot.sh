#!/sbin/sh

bootmid=$(getprop ro.boot.mid)
bootcid=$(getprop ro.boot.cid)

case $bootmid in
	"2PZF10000")
		## Europe (OCE_UHL) ##
		resetprop ro.build.product "htc_oceuhl"
		resetprop ro.product.device "htc_oceuhl"
		;;
	"2PZF20000")
		## Dual SIM Dual Netcom UHL Europe Africa Asia (OCE_DUGL) ##
		resetprop ro.build.product "htc_ocedugl"
		resetprop ro.product.device "htc_ocedugl"
		;;
	"2PZF30000")
		## Dual card full Netcom UHL China (OCE_DUGL) ##
		resetprop ro.build.product "htc_ocedugl"
		resetprop ro.product.device "htc_ocedugl"
		;;
	*)
		## GSM (OCE_UL) ##
		resetprop ro.build.product "htc_oceul"
		resetprop ro.product.device "htc_oceul"
		;;
esac

exit 0