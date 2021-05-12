aug swayconfig#ft_detect
    au!
    au BufNewFile,BufRead *sway/config,*.swayconfig,*.sway.config,swayconfig set filetype=swayconfig
aug end
