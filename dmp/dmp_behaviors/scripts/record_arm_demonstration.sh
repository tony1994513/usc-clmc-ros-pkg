#!/bin/bash

cd `rospack find arm_dmp_data`
mkdir -p dmp_data/demonstrations
cd dmp_data/demonstrations

rosbag record /joint_states /SL/r_hand_wrench_processed /SL/r_hand_accelerations_processed /SL/r_hand_strain_gauges /SL/l_hand_wrench_processed /SL/l_hand_accelerations_processed /SL/l_hand_strain_gauges -O $1
