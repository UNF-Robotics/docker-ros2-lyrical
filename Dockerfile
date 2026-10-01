FROM ros:lyrical-ros-core-resolute

# update base system
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && apt-get upgrade -y --no-install-recommends

# install ros2 packages
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && apt-get install -y --no-install-recommends \
	libpcl-dev \
	libusb-1.0-0-dev \
	python3-colcon-devtools \
	python3-colcon-package-selection \
	python3-colcon-ros \
	ros-dev-tools \
	ros-lyrical-ament-lint-auto \
	ros-lyrical-controller-manager \
	ros-lyrical-depthimage-to-laserscan \
	ros-lyrical-joint-limits \
	ros-lyrical-joint-state-publisher \
	ros-lyrical-joy-linux \
	ros-lyrical-joy-teleop \
	ros-lyrical-pcl-conversions \
	ros-lyrical-pointcloud-to-laserscan \
	ros-lyrical-robot-state-publisher \
	ros-lyrical-ros2-controllers \
	ros-lyrical-ros2launch \
	ros-lyrical-rplidar-driver \
	ros-lyrical-slam-toolbox \
	ros-lyrical-teleop-twist-keyboard \
	ros-lyrical-xacro \
	unzip \
	&& rm -rf /var/lib/apt/lists/*

# ros 2 env, workspace, ros2_laser_scan_merger, etc
COPY commands.sh ./
COPY ros2_laser_scan_merger-lyrical-cmake.patch ./

RUN chmod +x ./commands.sh && sync && ./commands.sh
