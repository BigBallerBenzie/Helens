library(rayshader) 
library(rayvista)
library(rayrender)
.lat <- 46.231892
.long <- -122.188738

helens <- plot_3d_vista(lat = .lat, long = .long, phi=30
                        , zscale = 3, radius = 10000)
render_camera(theta = 200, phi = 30, zoom = 0.75, fov = 0)
render_highquality('helens3', lightintensity = 500, samples = 200,
                   width = 7200, height = 4800, lightdirection = 135)