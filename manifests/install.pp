# @summary Handles the installation of the vim package.
#
class vim::install{
    package{'vim':
        ensure => 'installed'
    }
}
