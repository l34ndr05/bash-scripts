#!/bin/bash

# limpando instalalções anteriores
sudo rm -Rf /opt/firefox-developer*
sudo rm -Rf /usr/bin/firefox-developer
sudo rm -Rf /usr/share/applications/firefox-developer.desktop

# baixando o programa
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2

# moverndo para o diretorio
sudo tar -jxvf  firefox-developer.tar.bz2 -C /opt/
sudo mv /opt/firefox*/ /opt/firefox-developer

# criando um atalho para execução do programa

sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer

# se o ambiente suprota um atalho na área de trabalho

echo -e '[Desktop Entry]\n Version=yy.y.y\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop

# Já se a sua distribuição suportar, coloque o atalho na sua área de trabalho usando o gerenciador de arquivos do sistema ou o comando abaixo, e use-o para iniciar o programa.
 
sudo chmod +x /usr/share/applications/firefox-developer.desktop

# se o sistema estiver em porutguês
# cp /usr/share/applications/firefox-developer.desktop  ~/Área\ de\ Trabalho/

# se o sistema estiver em inglês
# cp /usr/share/applications/firefox-developer.desktop ~/Desktop 


# para remover o navegador

# sudo rm -Rf /opt/firefox-developer*
# sudo rm -Rf /usr/bin/firefox-developer
# sudo rm -Rf /usr/share/applications/firefox-developer.desktop
