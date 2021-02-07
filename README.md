# killPort
Sometimes using different servers for testing, some processes remain open leaving ports unusable.<br>
This script will find and kill the process that is using an specific port.

Installation (only tested in Debian distributions)<br>
$> `ln -s path_to/killPort.zsg /usr/bin/killPort`

Usage<br>
$> `killPort port_number_to_kill`
