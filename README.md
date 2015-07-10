GNOME Shell Gestures (OS X-like)
================

1. Install TouchEgg **from source** [here](https://github.com/JoseExposito/touchegg/tree/master/touchegg).
	* It is important that you build from source because the latest version in the Ubuntu repositories does not support gestures from the desktop or overview.
2. Checkout this repo and make the files executable:

	```bash
	git clone https://github.com/justindriggers/gnome-shell-gestures.git ~/.config/touchegg
	cd ~/.config/touchegg
	chmod +x *.sh
	```
3. Setup keyboard shortcuts that touchegg will recognize:
	* Settings > Keyboard > Shortcuts (tab) > Custom Shortcuts
	* **Shift+Ctrl+Alt+U** should run show_overview.sh
	* **Shift+Ctrl+Alt+I** should run hide_overview.sh
	* **Shift+Ctrl+Alt+O** should run show_applications.sh
	* **Shift+Ctrl+Alt+P** should run hide_applications.sh
4. Make sure TouchEgg starts on startup:
	```
    echo "touchegg &" >> ~/.xprofile
    ```
5. Restart gdm, or reboot:
	```
    sudo systemctl restart gdm
    ```
    

Last tested using GNOME Shell 3.14.4 and TouchEgg commit [f38d2045813661f8082baeb46af54f518e897983](https://github.com/JoseExposito/touchegg/tree/f38d2045813661f8082baeb46af54f518e897983)
