#!/bin/bash
# Setup CEA

echo $PWD
#Change to directory of this script
cd "${0%/*}"
cd ../../cea
./getCea.sh
echo '#!/bin/bash' >> /etc/profile.d/cea.sh
echo "export CEA_DIR=$PWD" >> /etc/profile.d/cea.sh