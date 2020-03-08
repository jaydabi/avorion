FROM cm2network/steamcmd
USER root
RUN mkdir -p /home/steam/gameserver/avorion && \
mkdir -p /home/steam/data/avorion
COPY run_galaxy.sh /home/steam/run_galaxy.sh
RUN chown steam:steam /home/steam/ -R 
USER steam
RUN chmod u+x /home/steam/run_galaxy.sh && \
~/steamcmd/steamcmd.sh -p +login anonymous +force_install_dir /home/steam/gameserver/avorion +app_update 565060 validate +exit
WORKDIR /home/steam
CMD ["bash", "/home/steam/run_galaxy.sh"]
