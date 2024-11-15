# simpleGodotFPVsim
an open Godot FPV game into which you can import your own OBJs / Blender assets. It has a starting line and "gate"-blocks to clear. When all blocks are cleared, the timer stops. If you want more blocks for your track then you can duplicate them.

[![Youtube-Video where I try it with a few assets imported from 3D warehouses](http://img.youtube.com/vi/YDV4oYfQaaI/1.jpg)](https://www.youtube.com/watch?v=YDV4oYfQaaI)
 

***Please notice:

- To run you need Godot 4.3. If you are on an integrated GPU-chip like IntelHD you'd have to start Godot with Open-GL start options (make a shortcut, right click it, settings and add "--rendering-driver opengl3" behind the exe under "target") bc often they don't support Vulkan. Additionaly you'd have to change the Rendering Mode in "Project Settings" inside Godot

- Controller Mapping: I use a Speedlink. When I tested a Logitech and a Trust one out of the box their right sitck did not work properly at first. So you'd likely have to adapt the input mapping to your controller. You find those options inside Godot in "Project Settings", "Input" (2nd Tab from the left). 

The relevant input menu entries are:


left stick (thrust & yaw):
ui_left /
ui_right /
ui_up /
ui_down


right stick (pitch and roll):
StickRightUp /
StickRightRight /
StickRightLeft /
StickRightDown


repair button (fixes drone's imbalance after crash):
ui_text_indent


camera view angle (increase up and decrease down)
ui_text_scroll_down /
ui_text_scroll_up




- The nice Watchtower demo model is not made by me of course. It is the work of user 3dHaupt of free3d.com. Thank you! The models full name is "Watch Tower made of Wood".
 
- You'll have to play around with the gravity values to adapt them to your liking as well as with the thrust in the script (click the symbol of a scroll which is next to the drone's 3dbody (right of its title) in the node list which is on the leftmost side of the screen).

- The following Video introduced me to Godot, it also covers creating a collision detection mesh for your 3d object: https://www.youtube.com/watch?v=A3HLeyaBCq4


***How to import 3d-Objects :

Godot accepts blender OBJ files and - when activated - also .BLEND files ( a video about how to activate Blender-import in Godot via Project Settings https://www.youtube.com/watch?v=G7o6moGPzh0 ).
Then to import simply drag and drop files into the resources window (usually bottom left of the screen) where it says "res://"). OBJ files need a separate MTL files and texture-imagefiles for the textures to work). 
Collision: For OBJ-Files you can create "Collision Mesh Twins" easily to make collision detection work. But the Probems of the OBJ files were: For me it was sometimes tricky to get the textures working. The MTL files had the wrong paths in them, textures had the wrong format etc.
Now I could just drag and drop a Blend-file into Godot. Textures tended to be less difficult to get to appear now.
But you can't create a collision mesh of a Blend-File in Godot afaik. So I most often use both: A .BLEND-File for the visual mesh as well as an .OBJ file which I can apply a collision mesh on (and then turn the untextured .OBJ invisible)
-if you cannot spot your model after importing: it may be scaled too big or too small or may be displaced -> use menu "transformation" on the right screen edge to correct.
-if your model is shiny white: probaby you forgot to delete the lightsource in Blender.

***How i made working TV screens 

(the screen the guys are holding in my youtube video)
I first tried to incorporate it as an animation in Blender but couldn't get it to work. Then I found that tutorial on how to create a "sub viewport":
https://www.youtube.com/watch?v=V8H6X8BMIAc



***Good sources for 3d-Levels/objects:

Sketchfab.com
Free3d.com
3dwarehouse.sketchup.com
Ripping 3D-Models using Renderdoc (can even rip 3D-footage from GoogleMaps)


ToDo-Things
_the motor sound is my toothbrush, just knew nothing better that moment
_physics settings are surely improvable to feel more crisp like Liftoff. I'm not satisfied with the exponential trust. Maybe part of the issue is also how Godot recognizes my stick (when i pull it over to the half then Godot already gives the full "1" value as if it was pulled fully over)
_now order in which you clear the gates does not matter. Maybe adding an option to set an order of the gates.


Credts:

-the demo object Watchtower is "Watch Tower made of Wood" from Free3d by 3dHaupt /
-the basic idea of creating FPV-movement in a free engine was inspired by Nathan Loopz who did this in Unity, like and subscribe him. 
