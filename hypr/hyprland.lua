hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show drun"
local browser = "firefox"
local editor = "nvim"

--## ENVIRONMENT VARIABLES ###

hl.env("XCURSOR_SIZE", 24)
hl.env("HYPRCURSOR_SIZE", 24)
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

--## PERMISSIONS ###
-- ecosystem {

--   enforce_permissions = 1

-- }

-- permission = /usr/(bin|local/bin)/grim, screencopy, allow

-- permission = /usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland, screencopy, allow

-- permission = /usr/(bin|local/bin)/hyprpm, plugin, allow

--## LOOK AND FEEL ###
hl.window_rule({
    name  = "float_on_80",
    match = { class = ".*" },
    float = true,
    size = { 900, 750 },
    center = true,
})

hl.window_rule({
    name  = "float_on_81",
    match = {
        class = "^(kitty)$",
    },
    float = true,
    size = { 500, 350 },
    center = true,
})

hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 1,
        -- https://wiki.hypr.land/Configuring/Variables/#variable-types for info about colors
        -- Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,
        -- Please see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
        allow_tearing = false,
        layout = "master",
        col = {
            active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },
    },
})

hl.config({
    decoration = {
        rounding = 10,
        rounding_power = 2,
        -- Change transparency of focused and unfocused windows
        active_opacity = 0.93,
        inactive_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        -- https://wiki.hypr.land/Configuring/Variables/#blur
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#animations

hl.config({
    animations = {
        enabled = true,
        -- Default animations, see https://wiki.hypr.land/Configuring/Animations/ for more
    },
})
hl.curve("easeOutQuint", {
    type = "bezier",
    points = { { 0.23, 1 }, { 0.32, 1 } },
})
hl.curve("easeInOutCubic", {
    type = "bezier",
    points = { { 0.65, 0.05 }, { 0.36, 1 } },
})
hl.curve("linear", {
    type = "bezier",
    points = { { 0, 0 }, { 1, 1 } },
})
hl.curve("almostLinear", {
    type = "bezier",
    points = { { 0.5, 0.5 }, { 0.75, 1.0 } },
})
hl.curve("quick", {
    type = "bezier",
    points = { { 0.15, 0 }, { 0.1, 1 } },
})
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })

-- See https://wiki.hypr.land/Configuring/Dwindle-Layout/ for more

hl.config({
    dwindle = {
        preserve_split = true,
        -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Master-Layout/ for more

hl.config({
    master = {
        --new_status = master
    },
    misc = {
        force_default_wallpaper = -1,
        -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = false,
        -- If true disables the random hyprland logo / anime girl background. :(
    },
    input = {
        kb_layout = "us",
        follow_mouse = 1,
        sensitivity = 0,
        -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = true,
        },

    },
})

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

--## KEYBINDINGS ###

hl.config({
    misc = {
        focus_on_activate = true,
    },
})

local mainMod = "SUPER"

hl.bind(mainMod .. " + " .. "Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + " .. "W", hl.dsp.window.close())
hl.bind(mainMod .. " + " .. "O", hl.dsp.exit())
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("dolphin"))
hl.bind(mainMod .. " + " .. "V", hl.dsp.window.fullscreen({ mode = 'maximized' })) hl.bind(mainMod .. " + " .. "R", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + " .. "P", hl.dsp.window.pin())
hl.bind(mainMod .. " + " .. "L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + " .. "A", hl.dsp.exec_cmd("firefox"))

hl.bind(mainMod .. " + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())
    hl.dispatch(hl.dsp.window.bring_to_top())
end)

hl.bind(mainMod .. " + " .. "Z", hl.dsp.exec_cmd("flatpak run app.zen_browser.zen"))
-- Screenshots
hl.bind("SUPER + M", hl.dsp.exec_cmd("grim ~/Pictures/screenshot_$(date +%Y-%m-%d_%H-%M-%s).png"))
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd("grim -g \"$(slurp)\" ~/Pictures/screenshot_$(date +%Y-%m-%d_%H-%M-%s).png"))
-- Windows size & resize
hl.bind("SUPER + up", hl.dsp.window.resize({ x = 0, y = -40, relative = true }), { repeating = true })
hl.bind("SUPER + down", hl.dsp.window.resize({ x = 0, y = 40, relative = true }), { repeating = true })
hl.bind("SUPER + G", hl.dsp.window.center())
hl.bind("SUPER + G", hl.dsp.window.resize({ x = 900, y = 750}))
hl.bind("SUPER + N", hl.dsp.window.resize({ x = 400, y = 350}))
-- Record video
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("pkill -SIGINT wf-recorder || wf-recorder -f ~/Videos/grabacion_$(date +%Y-%m-%d_%H-%M-%s).mp4"))
-- Redimensionar solo horizontal
hl.bind("SUPER + left", hl.dsp.window.resize({ x = -40, y = 0, relative = true }), { repeating = true })
-- Mover ventana con el teclado
hl.bind("SUPER + SHIFT + bracketleft",  hl.dsp.window.move({ x = -40, y = 0,  relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + bracketright", hl.dsp.window.move({ x = 40,  y = 0,  relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + semicolon",    hl.dsp.window.move({ x = 0,   y = -40, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + apostrophe",   hl.dsp.window.move({ x = 0,   y = 40,  relative = true }), { repeating = true })
hl.bind("SUPER + right", hl.dsp.window.resize({ x = 40, y = 0, relative = true }), { repeating = true })

-- Volumen de sonido
hl.bind(mainMod .. " + " .. "K", hl.dsp.exec_cmd("amixer set Master 25%+"))
hl.bind(mainMod .. " + " .. "H", hl.dsp.exec_cmd("amixer set Master 25%-"))
hl.bind(mainMod .. " + " .. "U", hl.dsp.exec_cmd("amixer set Master toggle")) -- Silenciar

-- Brillo de pantalla
hl.bind(mainMod .. " + " .. "Y", hl.dsp.exec_cmd("brightnessctl s 5%+"))
hl.bind(mainMod .. " + " .. "T", hl.dsp.exec_cmd("brightnessctl s 2%-"))
hl.bind(mainMod .. " + " .. "X", hl.dsp.exec_cmd("brightnessctl s 1%-"))

-- Switch workspaces with mainMod + [0-5]

hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-5]

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))

-- Move/resize windows with mainMod + LMB/RMB and dragging

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
-- hl.bind("mouse:272", hl.dsp.window.bring_to_top(), { non_consuming = true })
hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness

-- Requires playerctl

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

--## WINDOWS AND WORKSPACES ###

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("brightnessctl s 200")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("waybar")
    hl.exec_cmd("app.zen_browser.zen")
    hl.exec_cmd("dunst")
    hl.exec_cmd("gammastep")
    hl.exec_cmd("swaybg -i Downloads/bg/starry-skies-and-cozy-nights-ge-1920x1200.jpg")
    hl.exec_cmd("sh -c 'UPPER_LIMIT=80; LOWER_LIMIT=20; while true; do LEVEL=$(cat /sys/class/power_supply/BAT0/capacity); STATUS=$(cat /sys/class/power_supply/BAT0/status); if [ \"$LEVEL\" -ge \"$UPPER_LIMIT\" ] && [ \"$STATUS\" = \"Charging\" ]; then dunstify -u critical -i battery-full-charged \"Batería al $LEVEL%\" \"Desconecta el cargador\"; elif [ \"$LEVEL\" -le \"$LOWER_LIMIT\" ] && [ \"$STATUS\" = \"Discharging\" ]; then dunstify -u critical -i battery-caution \"Batería Baja\" \"Nivel al $LEVEL%. Conecta el cargador\"; fi; sleep 120; done'")
    hl.exec_cmd("bash -c 'while true; do bat_lvl=$(cat /sys/class/power_supply/BAT0/capacity); bat_st=$(cat /sys/class/power_supply/BAT0/status); if [ \"$bat_lvl\" -le 10 ] && [ \"$bat_st\" = \"Discharging\" ]; then notify-send -u critical \"Batería Baja\" \"Se te olvidó conectar el cargador\"; elif [ \"$bat_lvl\" -ge 90 ] && [ \"$bat_st\" = \"Charging\" ]; then notify-send -u normal \"Batería Llena\" \"Se te olvidó desconectar el cargador\"; fi; sleep 60; done'")
    hl.exec_cmd("sleep $(( ( $(date -d \"20:00\" +%s) - $(date +%s)+ 86400 )% 86400 )) && dunstify \"Recordatorio\" \"Ya son las 8:00 PM\" -i clock")
    hl.exec_cmd("sleep $(( ( $(date -d \"20:30\" +%s) - $(date +%s)+ 86400 )% 86400 )) && dunstify \"Recordatorio\" \"Ya son las 8:30 PM\" -i clock")
end)
