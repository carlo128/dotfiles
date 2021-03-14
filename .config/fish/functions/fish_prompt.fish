function fish_prompt --description 'Informative prompt'

    switch "$USER"
        case root toor
            printf '%s@%s %s%s%s# ' $USER (prompt_hostname) (set -q fish_color_cwd_root
                                                             and set_color $fish_color_cwd_root
                                                             or set_color $fish_color_cwd) \
                (prompt_pwd) (set_color normal)
        case '*'
            printf (set_color brblue)'<%s%s> %s%s%s $ ' (set_color brblue) \
                $USER (set_color $fish_color_cwd) $PWD $pipestatus_string \
                (set_color normal)
    end
end
