class pkg_install{
 $pkg_name = [ 'httpd' ]
 $grp_name = 'boss'
 $usr_name = 'boss'
 package { $pkg_name :
  ensure => 'present',
 }
 group { $grp_name :
  ensure => 'present',
  gid => '2005'
 }
 user { $usr_name :
  ensure           => 'present',
  comment          => "$usr_name",
  home             => "/root/$usr_name",
  gid              => '2005'
 }
 
}
include pkg_install
