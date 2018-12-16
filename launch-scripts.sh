# zed
# xhost +si:localuser:root
# nvidia-docker run -it --privileged -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix stereolabs/zed:ubuntu1604-cuda10.0-zed2.7-gl

# ros
# docker run -it ros
# docker ps -l
# docker exec -it <dockerID> bash
# rostopic list

# nvidia-docker run -it --privileged -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix stereolabs/zed:ubuntu1604-cuda9.0-zed2.7-ros