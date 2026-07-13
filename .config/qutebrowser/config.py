config.load_autoconfig()

config.unbind("J")
config.bind("J", "scroll-page 0 -0.5")
config.unbind("K")
config.bind("K", "scroll-page 0 0.5")

config.unbind("O")
config.bind("O", "open -w {url}")
config.unbind("F")
config.bind("F", "hint links window")

config.bind("<F5>", "config-source")

c.url.start_pages = "about:blank"
c.url.default_page = "about:blank"

c.fonts.web.family.standard = "Source Serif 4"
c.fonts.web.family.serif = "Source Serif 4"
c.fonts.web.family.sans_serif = "Inter"
c.fonts.web.family.fixed = "CommitMonoAnnada"

c.tabs.show = "never"
c.statusbar.show = "in-mode"
c.scrolling.bar = "never"

c.url.searchengines = {
    "DEFAULT": "https://search.brave.com/search?q={}",
}

c.editor.command = [ "mate-terminal",
    "--disable-factory", "--", "kak", "{}", ]

c.content.local_content_can_access_remote_urls = True

config.bind(",r", "spawn --userscript readability")
