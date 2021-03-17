aug swayconfig#ft_detect
    au!
    au BufNewFile,BufRead *.swayconfig,*.sway.config, swayconfig set filetype=swayconfig
aug end
