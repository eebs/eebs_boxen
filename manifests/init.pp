class eebs_boxen {
	# Package includes, these will require
	# the corresponding module to be installed
	include chrome
    include adium
    include vlc
    include onepassword
    include dropbox
    include tower

    # Custom packages
    ensure_packages(['htop'])

    # Custom directories
    file {
        [
            "/Users/${::boxen_user}/code/",
        ]:
        ensure  => directory,
    }

    # Custom classes
    include eebs_boxen::dotfiles
    include eebs_boxen::gitoverrides
    include eebs_boxen::sublime
    include eebs_boxen::ssh
}
