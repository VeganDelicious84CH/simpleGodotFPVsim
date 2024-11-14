***Please notice:
- To run you need Godot 4.3. If you are on an integrated GPU-chip like IntelHD you'd have to start Godot with Open-GL start options (make a shortcut, right click it, settings and add "--rendering-driver opengl3" behind the exe under "target") bc often they don't support Vulkan.
- The nice Watchtower demo model is not made by me of course. It is the work of user 3dHaupt of free3d.com. Thank you! The models full name is "Watch Tower made of Wood". 
- You'll have to play around with the gravity values to adapt them to your liking as well as with the thrust in the script (scroll symbol next to the drone's 3dbody).


***Good sources for 3d-Levels/objects:
Sketchfab.com
Free3d.com


***things to add:
- Buttons to adjust camera angle in-game during flight
- Downward thrust / reduce thrust with left stick is lacking until now
- making a tutorial how to import OBJs into Godot (it's tricky: often textures are missing. I'll show you how to fix the .MTL-file when there's the wrong path. Sometimes there is not path at all: Blender doesn't write the path into the .MTL when there are transforms applied in the shader node menue. I'll show you how to remove them.
