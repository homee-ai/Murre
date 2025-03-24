# This script is used to get the sparse depth from the sfm output
# The input_sfm_dir is the directory of the sfm output
# The output_sfm_dir is the directory of the output
# The processing_res is the resolution of the output    

# set the root directory
root_dir=$1
# set the input sfm directory
input_sfm_dir="${root_dir}/colmap/colmap/0/"
# set the output sfm directory
output_sfm_dir="${root_dir}/"
# set the processing resolution
processing_res=$2

python sfm_depth/get_sfm_depth.py --input_sfm_dir ${input_sfm_dir} --output_sfm_dir ${output_sfm_dir} --processing_res ${processing_res}