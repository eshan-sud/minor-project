

# Monocular ORB-SLAM3

# ORB SLAM3 Directory
ORB_SLAM3_DIR="$HOME/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04/Examples/Monocular"
# Dataset Execution Commands
TUM_CMD="./mono_tum ../../Vocabulary/ORBvoc.txt ../../Examples/Monocular/TUM1.yaml ~/minor-project/Datasets/TUM/rgbd_dataset_freiburg1_desk"
EUROC_CMD="./mono_euroc ../../Vocabulary/ORBvoc.txt ../../Examples/Monocular/EuRoC.yaml ~/minor-project/Datasets/EuRoC/MH01 ../../Examples/Monocular/EuRoC_TimeStamps/MH01.txt dataset-MH01_mono"

if [ $# -eq 0 ]; then
  echo "Usage: $0 <dataset>"
  echo "Where <dataset> is either 'TUM' or 'EuRoC'"
  exit 1
fi

DATASET=$1
if [ "$DATASET" == "TUM" ]; then
  command="$TUM_CMD"
elif [ "$DATASET" == "EuRoC" ]; then
  command="$EUROC_CMD"
else
  echo "Invalid dataset. Please choose 'TUM' or 'EuRoC'."
  exit 1
fi


# Change directory to ORB_SLAM3
cd $ORB_SLAM3_DIR || { echo "Failed to change directory!"; exit 1; }
eval "$command"



# cd ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04/
# ./Examples/Monocular/mono_tum Vocabulary/ORBvoc.txt Examples/Monocular/TUM1.yaml ~/minor-project/Datasets/TUM/rgbd_dataset_freiburg1_desk
