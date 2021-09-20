Project-1/Linux/sys_info.sh
@lkborden
lkborden Add files via upload
Latest commit 405464d 4 days ago
 History
 1 contributor
9 lines (7 sloc)  195 Bytes
  
#!/bin/bash

echo "A  Quick System Audit Script"
date
echo $MATCHTYPE
echo -e "Unameinfo: $(uname -a) \n"
echo -e "IP Info: $(ip addr | head -9 |tail -1) \n"
echo "The Hostname is: $(hostname)"

© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
