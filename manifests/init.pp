class eebs_boxen {
	# Package includes, these will require
	# the corresponding module to be installed
	include chrome
    include adium
    include vlc
    include onepassword
    include dropbox
    include tower
    include nodejs::v0_10

    # Custom packages
    ensure_packages(['htop'])
    ensure_packages(['bash-completion'])

    # Custom classes
    include eebs_boxen::dotfiles
    include eebs_boxen::gitoverrides
    include eebs_boxen::sublime
    include eebs_boxen::ssh
}
