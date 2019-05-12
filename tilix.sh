#! /bin/bash

# Install Tilix
apt install -y tilix

# Get the default profile
profile=$(gsettings get com.gexperts.Tilix.ProfilesList default)

# Remove the leading "'" and trailing "'"
profile=${profile:1:-1}

# Do not use theme colors for the background and foreground
dconf write /com/gexperts/Tilix/profiles/$profile/use-theme-colors "false"

# Set the background color
dconf write /com/gexperts/Tilix/profiles/$profile/background-color "'#000000000000'"

# Set the foreground color
dconf write /com/gexperts/Tilix/profiles/$profile/foreground-color "'#2222DDDD2222'"

# Set the terminal title
dconf write /com/gexperts/Tilix/profiles/$profile/terminal-title "'\${id}'"

# Rename the terminal
dconf write /com/gexperts/Tilix/keybindings/terminal-layout "'<Alt>b'"

# Set the session name
dconf write /com/gexperts/Tilix/session-name "'Session'"

# Set the app title
dconf write /com/gexperts/Tilix/app-title "'\${sessionName} \${sessionNumber} | Terminal \${id}'"

# Show the terminal title when single
dconf write /com/gexperts/Tilix/terminal-title-show-when-single "true"

# Set title style to small to save space
dconf write /com/gexperts/Tilix/terminal-title-style "'small'"

# Set a dark theme
dconf write /com/gexperts/Tilix/theme-variant "'dark'"

# Allow other windows to be on top
dconf write /com/gexperts/Tilix/quake-keep-on-top "'false'"

# Do not warn of vte config issues
dconf write /com/gexperts/Tilix/warn-vte-config-issue "false"

# Copy text on select
dconf write /com/gexperts/Tilix/copy-on-select "true"

# Copy and paste
dconf write /com/gexperts/Tilix/keybindings/terminal-copy "'<Alt>c'"
dconf write /com/gexperts/Tilix/keybindings/terminal-paste "'<Alt>v'"

# Find text
dconf write /com/gexperts/Tilix/keybindings/terminal-find "'<Primary>f'"
dconf write /com/gexperts/Tilix/keybindings/terminal-find-next "'<Primary>g'"
dconf write /com/gexperts/Tilix/keybindings/terminal-find-previous "'<Primary>h'"

# Save terminal contents
dconf write /com/gexperts/Tilix/keybindings/terminal-save "'<Primary>s'"

# Add a new terminal
dconf write /com/gexperts/Tilix/keybindings/session-add-auto "'<Alt>n'"
dconf write /com/gexperts/Tilix/keybindings/session-add-down "'<Alt>d'"
dconf write /com/gexperts/Tilix/keybindings/session-add-right "'<Alt>r'"

# Add a new session
dconf write /com/gexperts/Tilix/keybindings/app-new-session "'<Alt>s'"

# Add a new window
dconf write /com/gexperts/Tilix/keybindings/app-new-window "'<Alt>w'"

# Fullscreen the session
dconf write /com/gexperts/Tilix/keybindings/win-fullscreen "'<Alt>f'"

# Maximuze the terminal
dconf write /com/gexperts/Tilix/keybindings/terminal-maximize "'<Alt>m'"

# Zoom
dconf write /com/gexperts/Tilix/keybindings/terminal-zoom-in "'<Primary>equal'"
dconf write /com/gexperts/Tilix/keybindings/terminal-zoom-out "'<Primary>minus'"
dconf write /com/gexperts/Tilix/keybindings/terminal-zoom-normal "'<Primary>0'"

# Resize the terminal
dconf write /com/gexperts/Tilix/keybindings/session-resize-terminal-up "'<Shift><Alt>Up'"
dconf write /com/gexperts/Tilix/keybindings/session-resize-terminal-down "'<Shift><Alt>Down'"
dconf write /com/gexperts/Tilix/keybindings/session-resize-terminal-left "'<Shift><Alt>Left'"
dconf write /com/gexperts/Tilix/keybindings/session-resize-terminal-right "'<Shift><Alt>Right'"

# Switch to another terminal
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-next-terminal "'<Alt>k'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-previous-terminal "'<Alt>j'"

# Switch to another terminal by direction
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-up "'<Alt>Up'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-down "'<Alt>Down'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-left "'<Alt>Left'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-right "'<Alt>Right'"

# Switch to another terminal by number
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-1 "'<Alt>1'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-2 "'<Alt>2'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-3 "'<Alt>3'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-4 "'<Alt>4'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-5 "'<Alt>5'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-6 "'<Alt>6'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-7 "'<Alt>7'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-8 "'<Alt>8'"
dconf write /com/gexperts/Tilix/keybindings/session-switch-to-terminal-9 "'<Alt>9'"

# Switching and reordering sessions
dconf write /com/gexperts/Tilix/keybindings/win-switch-to-next-session "'<Alt>h'"
dconf write /com/gexperts/Tilix/keybindings/win-switch-to-previous-session "'<Alt>u'"
dconf write /com/gexperts/Tilix/keybindings/win-reorder-next-session "'<Primary><Alt>h'"
dconf write /com/gexperts/Tilix/keybindings/win-reorder-previous-session "'<Primary><Alt>u'"

# Close the terminal
dconf write /com/gexperts/Tilix/keybindings/terminal-close "'<Alt>e'"

# Show shortcuts
dconf write /com/gexperts/Tilix/keybindings/app-shortcuts "'<Alt>z'"

# Open file browser
dconf write /com/gexperts/Tilix/keybindings/terminal-file-browser "'<Alt>o'"

# Set a custom key binding to start Tilix in quake mode
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Tilix Quake'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'tilix --quake'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Alt>t'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

# Set a custom key binding to start Tilix
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/name "'Tilix'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/command "'tilix'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/binding "'<Primary>t'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

# Set aliases
echo "alias ts='bash /opt/jamesm0rr1s/Tilix-Setup/set-tilix-quake-size.sh'" >> ~/.bashrc
echo "alias tt='bash /opt/jamesm0rr1s/Tilix-Setup/set-tilix-transparency.sh'" >> ~/.bashrc

# Set the prompt to show Kali, the date, the time, path, and if the UID is 0
echo 'PS1="\[\033[01;31m\]\D{Kali} \[\033[00;37m\]\D{%F} \[\033[00;37m\]\D{%T} \[\033[01;34m\]\w\[\033[00;37m\]\\$\[\033[0m\] "' >> ~/.bashrc

# Set the click policy to open files and directories with a single click
dconf write /org/gnome/nautilus/preferences/click-policy "'single'"

# Set the executable-text-activation to display executable files in a text editor when clicked
dconf write /org/gnome/nautilus/preferences/executable-text-activation "'display'"

# Set the icon theme to the dark theme
dconf write /org/gnome/desktop/interface/icon-theme "'Zen-Kali-Dark'"

# Set the clock to show the date
dconf write /org/gnome/desktop/interface/clock-show-date "true"

# Set the favorite apps on the sidebar
dconf write /org/gnome/shell/favorite-apps "['firefox-esr.desktop', 'com.gexperts.Tilix.desktop', 'org.gnome.Nautilus.desktop', 'kali-burpsuite.desktop', 'org.gnome.gedit.desktop']"

# Start Tilix
tilix > /dev/null 2>&1 &