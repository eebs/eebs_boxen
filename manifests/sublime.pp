class eebs_boxen::sublime {

    include sublime_text_3
    include sublime_text_3::package_control

    sublime_text_3::package { 'sublime-text-puppet':
        source => 'eklein/sublime-text-puppet'
    }

    sublime_text_3::package { 'sublime-kurogo-debug':
        source => 'eebs/sublime-kurogo-debug'
    }

    sublime_text_3::package { 'sublimetext_indentxml':
        source => 'alek-sys/sublimetext_indentxml'
    }

    file { 'user-preferences':
        path    => '/Users/eebs/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings',
        ensure  => file,
        source  => 'puppet:///modules/eebs_boxen/sublime/Preferences.sublime-settings'
    }

    file { 'user-keybindings':
        path    => '/Users/eebs/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap',
        ensure  => file,
        source  => 'puppet:///modules/eebs_boxen/sublime/Default (OSX).sublime-keymap'
    }
}
