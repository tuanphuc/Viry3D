#define SKIN_MAT(skin_mat, blend_weight, blend_indices, bones)                                          \
{						                                                                                \
    int index_0 = int(blend_indices.x);																	\
    int index_1 = int(blend_indices.y);                         										\
    int index_2 = int(blend_indices.z);                         										\
    int index_3 = int(blend_indices.w);                         										\
                                                                										\
    float weights_0 = blend_weight.x;                           										\
    float weights_1 = blend_weight.y;                           										\
    float weights_2 = blend_weight.z;                           										\
    float weights_3 = blend_weight.w;                           										\
                                                                										\
	mat4 bone_0 = mat4(bones[index_0*3], bones[index_0*3+1], bones[index_0*3+2], vec4(0, 0, 0, 1));		\
	mat4 bone_1 = mat4(bones[index_1*3], bones[index_1*3+1], bones[index_1*3+2], vec4(0, 0, 0, 1));     \
	mat4 bone_2 = mat4(bones[index_2*3], bones[index_2*3+1], bones[index_2*3+2], vec4(0, 0, 0, 1));     \
	mat4 bone_3 = mat4(bones[index_3*3], bones[index_3*3+1], bones[index_3*3+2], vec4(0, 0, 0, 1));     \
	skin_mat = bone_0 * weights_0 + bone_1 * weights_1 + bone_2 * weights_2 + bone_3 * weights_3;       \
}
