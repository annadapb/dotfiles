config.load_autoconfig()

config.unbind("J")
config.bind("J", "scroll-page 0 -0.5")
config.unbind("K")
config.bind("K", "scroll-page 0 0.5")

c.new_instance_open_target = "window"

config.unbind("O")
config.unbind("F")
config.bind("O", "cmd-set-text -s :open -w ")
config.bind("t", "cmd-set-text -s :open -w ")
config.bind("T", "cmd-set-text -s :open -w {url:pretty}")
config.bind("F", "hint links window")
config.bind("d", "close")

for k in ['J', 'K', 'gt', 'g^', 'g$']: config.unbind(k)

config.bind('<Ctrl-g>', 'edit-text', mode='insert')
config.unbind('<Ctrl-e>', mode='insert')

config.bind("<F5>", "config-source")

c.url.start_pages = "about:blank"
c.url.default_page = "about:blank"

c.fonts.web.family.standard = "Source Serif 4"
c.fonts.web.family.serif = "Source Serif 4"
c.fonts.web.family.sans_serif = "Inter"
c.fonts.web.family.fixed = "CommitMono"

c.tabs.show = "never"
c.statusbar.show = "in-mode"
c.scrolling.bar = "never"

c.url.searchengines = {
    "DEFAULT": "https://search.brave.com/search?q={}",
}

c.editor.command = ["xterm", "-e", "kak", "{}"]

c.content.local_content_can_access_remote_urls = True

config.bind(",r", "spawn --userscript readability")

config.bind('<Ctrl-j>', 'completion-item-focus next', mode='command')
config.bind('<Ctrl-k>', 'completion-item-focus prev', mode='command')

c.content.user_stylesheets =  [
    str(config.configdir/'userstyles'/'serif.css'),
]
