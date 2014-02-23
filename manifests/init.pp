class eebs_boxen {
	# Package includes, these will require
	# the corresponding module to be installed
	include chrome
    include adium
    include vlc

    # Custom packages
    package { "htop": }

    # Custom classes
    include eebs_boxen::dotfiles
    include eebs_boxen::gitoverrides
}