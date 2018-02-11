#!/usr/bin/env python
import miniupnpc
u = miniupnpc.UPnP()
u.discoverdelay=200;u.discover();u.selectigd()

import sys
if len(sys.argv) != 2:
    sys.stderr.write("Syntax: certbot_upnp [add]/[remove]")
    sys.exit(1)

if sys.argv[1] == 'add':
    u.addportmapping(443,'TCP',u.lanaddr,8124,'CertBot_Renew','')

if sys.argv[1] == 'remove':
    u.deleteportmapping(443,'TCP')
