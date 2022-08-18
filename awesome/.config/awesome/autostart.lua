-- Standard awesome library
local spawn = require("awful.spawn")

-- Startup programs
-- Programs starting before spawn_with_shell
--
-- Gnome stuff
os.execute("/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &")

-- -- SSH Agent
os.execute("/usr/bin/gnome-keyring-daemon --start --components=ssh &")

-- im-launch
-- os.execute("sh -c 'if [ "x$XDG_SESSION_TYPE" = "xwayland" ] ; then exec env IM_CONFIG_CHECK_ENV=1 im-launch true; fi' &")

-- Configure NVIDIA X Server Settings
os.execute("sh -c '/usr/bin/nvidia-settings --load-config-only' &")

-- Keyboard configuration
--
-- # Allows Ctrl+Alt+Backspace to restart Xorg
os.execute("setxkbmap -option terminate:ctrl_alt_bksp &")

-- Programs starting with spawn_with_shell

-- A service that provides the org.kde.StatusNotifierWatcher interface for XApps
spawn.with_shell("/usr/libexec/xapps/sn-watcher/xapp-sn-watcher")

-- compton
spawn.with_shell("compton --config /home/ipman/.config/compton/compton.conf")

-- wallpaper
spawn.with_shell("feh --randomize --bg-fill  ~/Pictures/wallpaper/*")

-- mount partitions
spawn.with_shell("/home/ipman/scripts/mount_partitions")

-- Mint componentes
spawn.with_shell("sleep 3; mintupdate-launcher")
spawn.with_shell("mintreport-tray")
