#!/bin/bash
cp -r ../statter /opt

cat > /usr/share/applications/statter.desktop << EOF # create desktop file at desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Statter
Comment=Hit me with statistics about my system!
Exec=/bin/bash statter
Icon=/opt/statter/img/statter.png
Path=/opt/statter/
Terminal=false
StartupNotify=false
EOF
   
chmod u+x /usr/share/applications/statter.desktop  # give execution permission to desktop file.