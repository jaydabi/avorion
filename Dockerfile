FROM cm2network/steamcmd
RUN mkdir -p /home/steam/gameserver/avorion && \
chown steam:steam /home/steam/ -R && \
~/steamcmd/steamcmd.sh -p +login anonymous +force_install_dir /home/steam/gameserver/avorion +app_update 565060 validate +exit
RUN ~/steamcmd/steamcmd.sh -p +login anonymous +force_install_dir /home/steam/gameserver/avorion +app_update 565060 validate +exit
USER steam
CMD ['']
