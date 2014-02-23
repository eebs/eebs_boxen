class eebs_boxen::gitoverrides {

    # Boxen set the gitignore file to /opt/boxen/config/git/gitignore
    # This changes it back to a customizable ignore file
    # see https://github.com/boxen/puppet-git/issues/7

    Git::Config::Global <| title == "core.excludesfile" |> {
      value => "~/.gitignore"
    }
}