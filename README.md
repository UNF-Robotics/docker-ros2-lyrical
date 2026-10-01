# docker-ros2-lyrical

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=plastic)](https://github.com/UNF-Robotics/docker-ros2-lyrical/blob/master/LICENSE.txt)
[![Docker Image Status](https://github.com/UNF-Robotics/docker-ros2-lyrical/actions/workflows/main.yml/badge.svg/)](https://github.com/UNF-Robotics/docker-ros2-lyrical/actions)

Docker image with ROS 2 lyrical Development Environment for various robotics
purposes at UNF, club, research, and development. This container contains the
initial base headless environment and minimum packages needed to build and
run ROS 2 packages. Intended for use in CI and as base for other images.

[Docker Hub Tags](https://hub.docker.com/r/unfrobotics/docker-ros2-lyrical/tags) - Latest v1

## Docker Pull Command

```bash
docker pull unfrobotics/docker-ros2-lyrical
```

## Development Environment Usage

Inside the container, there is an initial folder `/opt/ros_ws/src` that is
intended for use for to build ROS 2 packages. Sources can either be
downloaded into the container, or the recommended local mount, which allows
for development using a local IDE.

### Run Command in Linux Container

The following command will open a terminal to the newly created
container that uses the host computers network. It also assumes that the
sources have been downloaded locally in `~/mypkg_ros/` and shared as a
volume in the folder inside the container.

```bash
docker run --net=host --rm -it -v ~/mypkg_ros/:/opt/ros_ws/src/mypkg_ros unfrobotics/docker-ros2-lyrical:latest
```

Then, to proceed change to the workspace directory in the container
and proceed with building, running, etc.

```bash
cd /opt/ros_ws/
```
