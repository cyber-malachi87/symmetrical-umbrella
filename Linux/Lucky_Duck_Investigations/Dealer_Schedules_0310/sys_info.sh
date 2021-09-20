9 lines (7 sloc)  195 Bytes
  
#!/bin/bash

echo "A  Quick System Audit Script"
date
echo $MATCHTYPE
echo -e "Unameinfo: $(uname -a) \n"
echo -e "IP Info: $(ip addr | head -9 |tail -1) \n"
echo "The Hostname is: $(hostname)"
