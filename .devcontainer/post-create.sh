#!/bin/bash

printf 'export PATH="$HOME%s:$PATH"\n' "/.astra/cli" >> $HOME/.bashrc
printf 'unset JAVA_TOOL_OPTIONS\n' >> $HOME/.bashrc
curl -Ls "https://dtsx.io/get-astra-cli" | bash >> ./install.log
mkdir -p $HOME/.config/httpie
sudo /home/vscode/.astra/cli/astra setup -t "AstraCS:bdBaXXGBfDHUCcEGeBzQfumZ:1ca0ae356009dd8dcd36d9c0b210968731741cb3d727c4553ab1840c61ee2d08"
sudo /home/vscode/.astra/cli/astra db create-dotenv stargate -k swag -d $HOME/.config
sudo /home/vscode/.pyenv/shims/python assets/set-environment.py $HOME/.config/.env swag
sudo rm -rf /workspaces/httpie-katapod/.newenv
sudo mv /home/vscode/.astrarc /root
cp /workspaces/httpie-katapod/assets/config-astra.json $HOME/.config/httpie/config.json