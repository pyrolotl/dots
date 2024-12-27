# Test for an interactive shell
if [[ $- != *i* ]] ; then
    return
fi

# Launch Sway
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    dbus-run-session sway
fi

# Aliases
. $HOME/.aliases
