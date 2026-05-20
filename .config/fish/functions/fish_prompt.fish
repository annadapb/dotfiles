function fish_prompt
    set_color --bold green
    printf "[%s:%s] " (prompt_hostname) (prompt_pwd -D 3 -d 2) 
    set_color normal
end
