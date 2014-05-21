class eebs_boxen::dotfiles {

    $home     = "/Users/${::boxen_user}"
    $my       = "${home}/my"
    $dotfiles = "${my}/dotfiles"

    file { $my:
        ensure  => directory
    }

    repository { $dotfiles:
        source  => 'eebs/dotfiles',
        require => File[$my],
    }
}