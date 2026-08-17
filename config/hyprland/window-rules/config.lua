hl.window_rule({
    name = "obsidian-borderless",
    match = { class = "^md\\.Obsidian$" },
    border_size = 0,
})
hl.window_rule({
    name = "obsidian-workspace",
    match = { class = "^md\\.Obsidian$" },
    workspace = "1 silent",
})

hl.window_rule({
    name = "termfilechooser-float",
    match = { title = "termfilechooser" },
    float = true,
    size = {800, 600},
    center = true,
})

hl.layer_rule({
    name = "quickshell-noanim",
    match = { namespace = "quickshell" },
    no_anim = true,
})
