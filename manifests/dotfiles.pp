class eebs_boxen::dotfiles {

    $home     = "/Users/${::boxen_user}"
    $code     = "${home}/code"
    $eebs     = "${code}/eebs"
    $dotfiles = "${eebs}/dotfiles"

    file {
        [
            $code,
            $eebs
        ]:
        ensure => directory,
    }

    repository { $dotfiles:
        source  => 'eebs/dotfiles',
        require => File[$eebs],
    }
}
