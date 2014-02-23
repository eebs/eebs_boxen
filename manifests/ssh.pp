class eebs_boxen::ssh {

    $home = "/Users/${::boxen_user}"

    file { "${home}/.ssh/config":
        ensure => file
    }

    file_line { 'ssh_config_control_master':
        path => "${home}/.ssh/config",
        line => 'ControlMaster auto'
    }

    file_line { 'ssh_config_control_path':
        path => "${home}/.ssh/config",
        line => 'ControlPath /tmp/ssh_mux_%h_%p_%r'
    }
}
