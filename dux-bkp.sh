#!/usr/bin/env bash

# copiar dux_toolbox para 2 HDs como backup

set -e

agora=$(date '+%d/%m/%Y %H:%M')
echo $agora > /home/$USER/dux_toolbox/ultimobkp
if findmnt /home/$USER/mnt/hd1tb;     then cp --recursive --force /home/$USER/dux_toolbox /home/$USER/mnt/hd1tb; fi
if findmnt /home/$USER/mnt/hdext2013; then cp --recursive --force /home/$USER/dux_toolbox /home/$USER/mnt/hdext2013; fi
