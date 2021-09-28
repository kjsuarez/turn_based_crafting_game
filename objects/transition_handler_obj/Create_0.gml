/// @description Insert description here

// Transition obj draft

transitioning = false;
transition_state = "ready";

viewport_width = room_width //view_get_wport(view_camera[0]);
viewport_height = room_height//view_get_hport(view_camera[0]);

max_radius = viewport_width * 1.2;
original_visible_radius = 0; //max zoom
visible_radius = original_visible_radius;
target_visible_radius = max_radius;
transition_spd = 0.05;

surf = surface_create((viewport_width * 1/*camera_obj.zoom*/) + 2, (viewport_height * 1/*camera_obj.zoom*/) + 2);
