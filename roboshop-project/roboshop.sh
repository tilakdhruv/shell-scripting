nes (13 sloc)  378 Bytes

#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]; then
  echo -e "\e[1;31m You should be root user to execute this script ..\e[0m"
  exit 1
fi

if [ -f components/$1.sh ]; then
  bash components/$1.sh
else
  echo -e "\e[1;31mInvalid Input\e[0m"
  echo -e "\e[1;33mAvailable Inputs - frontend|mongodb|catalogue|redis|user|cart|mysql|shipping|payment|rabbitmq|dispatch\e[0m"
  exit 1
<<<<<<< HEAD
fi
=======
fi
>>>>>>> 08537e591a64fd8621a2f1d6e8eb599aac1c1212
