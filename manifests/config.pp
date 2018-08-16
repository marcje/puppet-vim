# @summary Handles the configuration of the vim package.
#
class vim::config{
    file{'/etc/vim/vimrc':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => epp('vim/vimrc.epp')
    }
}
