# minecraft-docker
Clone repo
Download server modpack .zip
Extract contents of server .zip to minecraft/ directory

If using WSL, update file at %UserProfile%/.wslconfig and add:
```
[ws12]
memory=8GB
processors=4
```
If needed settings for server are less, tweak those ws12 settings and tweak -Xms and -Xmx in minecraft.sh file.

Run `docker build -t mc_server .` to do initial setup.

On Windows:
Run `docker run -it --rm -p 25565:25565 -v $(pwd -W)/minecraft:/opt/minecraft mc_server sh minecraft.sh` to spin up the container.
