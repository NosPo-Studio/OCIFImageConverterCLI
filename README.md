This is a CLI version of IgorTimofeevs [OCIFImageConverter](https://github.com/IgorTimofeev/OCIFImageConverter).

This software is designed to convert any real images into OCIF images. The format created for the OpenComputers minecraft modification. It supports dithering, and Braille font, which allows you to break limit of 160x50 pixels and use up to 320x200.

This fork is made to convert whole folders at once keeping the original resolution. To get a smooth work flow using OCIF images in bigger projects.  
But it can be used to convert single files with manual given resolution as well.

# Requirements
### Image converter
For the imageConverter CLI frontend you need the following:  

Java8  
Lua 5.x  
LuaFileSystem (lsf)  

### Dir converter
For the dirConverter you need the following package in addition to the base requierements.  

ImageMagick:  
&emsp; debian/ubuntu: `sudo apt-get install imagemagick`  
&emsp; arch: `sudo pacman -Ss imagemagick`  
&emsp; windows / macOS: https://imagemagick.org/script/download.php

# OS
The scripts are tested on linux only but should work on other OSs as well.

# Dev note
This fork is made for our personal usage in mind. Thats why there no proper documentary yet.  
But I am willing to help get it running if someone actually want to use it. Just open a issue pls.

Also I have no idea about java. So im using lua for the CLI frontend.  