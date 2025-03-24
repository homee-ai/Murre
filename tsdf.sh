# this script is used to run the tsdf_fusion.py script
# it takes in the image directory, depth directory, intrinsic directory, and pose directory
# it then runs the tsdf_fusion.py script
# the tsdf_fusion.py script is used to fuse the depth maps into a tsdf model
# the tsdf model is then used to generate a mesh
# the mesh is then saved to a file

# configuration
# user input root directory
root_dir=$1

# set the image directory
image_dir="${root_dir}/images"
# set the depth directory
depth_dir="${root_dir}/depth_npy"
# set the intrinsic directory
intrinsic_dir="${root_dir}/intrinsic"
# set the pose directory
pose_dir="${root_dir}/pose"

# set the output directory
# if the output directory does not exist, create it
if [ ! -d "${root_dir}/colmap/colmap/0/" ]; then
    mkdir -p "${root_dir}/colmap/colmap/0/"
fi
output_dir="${root_dir}/colmap/colmap/0/"
save_tag="scene"

# run the tsdf_fusion.py script

python tsdf_fusion.py --image_dir ${image_dir} --depth_dir ${depth_dir} --intrinsic_dir ${intrinsic_dir} --pose_dir ${pose_dir} --output_dir ${output_dir} --save_tag ${save_tag}