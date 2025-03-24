# This script is used to run the whole pipeline
# The root_dir is the directory of the input
# The processing_res is the resolution of the output

# set the root directory
root_dir=$1
# set the processing resolution
processing_res=$2

# run the sfm depth
bash sfm_depth.sh ${root_dir} ${processing_res}

# run the run.sh
bash refine_depth.sh ${root_dir} ${processing_res}

# run the tsdf.sh
bash tsdf.sh ${root_dir} ${processing_res}