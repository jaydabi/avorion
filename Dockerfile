FROM cm2network/steamcmd
USER root
RUN mkdir -p /home/steam/gameserver/avorion
COPY run_galaxy.sh /home/steam/run_galaxy.sh
RUN chown steam:steam /home/steam/ -R && \
~/steamcmd/steamcmd.sh -p +login anonymous +force_install_dir /home/steam/gameserver/avorion +app_update 565060 validate +exit
RUN ~/steamcmd/steamcmd.sh -p +login anonymous +force_install_dir /home/steam/gameserver/avorion +app_update 565060 validate +exit
USER steam
CMD ['~/run_galaxy.sh']
