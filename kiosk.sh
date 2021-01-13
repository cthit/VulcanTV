pkill chromium-browse

URL="$1"
if  [ -z "$1" ]; then
	echo "no input param"
	URL="bussit.chalmers.it"
fi

i3-msg --socket "/run/user/1000/i3/$(ls -t /run/user/1000/i3/ | awk '{print $1}' | grep ipc | head -n 1)" exec "chromium-browser --noerrdialogs --disable-infobars --kiosk '$URL'"
