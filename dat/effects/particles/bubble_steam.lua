-- Save point particle effect
-- Author: Bertram

-- The effect overall size in pixel. Used to make the map mode draw the effect on time.
map_effect_collision = {
    effect_collision_width = 2 * 16,
    effect_collision_height = 3 * 16
}

systems = {}

systems[0] =
{
    enabled = true,

    emitter =
    {
        x = -10,
        y = -10,
        x2 = 10, --useless when using a circle shape
        y2 = -10, --useless when using a circle shape
        center_x = 0,  --useless when using a circle shape
        center_y = 0,  --useless when using a circle shape
        x_variation = 0,
        y_variation = 0,
        radius = 70,
        shape = 'line',
        omnidirectional = false,
        orientation = -1.6, --up
        angle_variation = 0.3,
        initial_speed = 10,
        initial_speed_variation = 5,
        emission_rate = 1,
        start_time = 0,
        emitter_mode = 'looping',
        spin = 'clockwise'
    },
    
    -- Makes the particles rotate.
    rotation = {
    },

    keyframes =
    {
        {  -- keyframe 1
            size_x = 2.0,
            size_y = 2.0,
            color={1.0, 1.0, 1.0, 0.6},
            rotation_speed = 0.2,
            size_variation_x = 0.0,
            size_variation_y = 0.0,
            rotation_speed_variation = 0.0,
            color_variation = {0.0, 0.0, 0.0, 0.0},
            time = 0.0
        },

        {  -- keyframe 2
            size_x = 1.9,
            size_y = 1.9,
            color = {1.0, 1.0, 1.0, 0.0},
            rotation_speed = 0.6,
            size_variation_x = 0.0,
            size_variation_y = 0.0,
            rotation_speed_variation = 0.0,
            color_variation = {0.0, 0.0, 0.0, 0.0},
            time = 1.0
        }

    },

    animation_frames =
    {
        'img/effects/dust.png'
    },
    animation_frame_times =
    {
        16
    },

    blend_mode = 13,
    system_lifetime = 1.6,
    particle_lifetime = 3.8,
    particle_lifetime_variation = 0.2,
    max_particles = 1,
    damping = 1,
    damping_variation = 0,
    acceleration_x = 0,
    acceleration_y = 0,
    acceleration_variation_x = 0,
    acceleration_variation_y = 0,
    wind_velocity_x = 0,
    wind_velocity_y = 0,
    wind_velocity_variation_x = 0,
    wind_velocity_variation_y = 0,

    tangential_acceleration = 0,
    tangential_acceleration_variation = 0,
    radial_acceleration = 0,
    radial_acceleration_variation = 0,
    user_defined_attractor = false,
    attractor_falloff = 0.0,

    smooth_animation = true,
    modify_stencil = false,
    stencil_op = 'INCR',
    use_stencil = false,
    random_initial_angle = true
}
