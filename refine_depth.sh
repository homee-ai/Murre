# This script is used to run the run.py script
# configuration

# input root directory
root_dir=$1
# set the processing resolution
processing_res=$2

# set the checkpoint
checkpoint="Murre"
# set the input rgb directory
input_rgb_dir="${root_dir}/images_w_sparse_depth"
# set the input sdpt directory
input_sdpt_dir="${root_dir}/sparse_depth"    
# set the output directory
output_dir="${root_dir}/outputs"
# set the denoise steps
denoise_steps=10
# set the ensemble size
ensemble_size=5

python run.py --checkpoint ${checkpoint} --input_rgb_dir ${input_rgb_dir} --input_sdpt_dir ${input_sdpt_dir} --output_dir ${output_dir} --denoise_steps ${denoise_steps} --ensemble_size ${ensemble_size} --processing_res ${processing_res}
