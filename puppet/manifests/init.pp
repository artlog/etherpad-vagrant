$node_version = "v10.19.0"
$npm_version = "6.13.4"
$install_base = "/home/etherpad"
$source_base = "/home/etherpad/dev"
$install_user = "etherpad"

Exec { 
  logoutput => on_failure,
  path => "/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/opt/ruby/bin/:${install_base}/node-${node_version}/bin",
}

import "classes/*"
import "nodes/*"
