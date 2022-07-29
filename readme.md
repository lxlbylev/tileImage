# TileImage v1.0
For Solar2D<br>
<br>
This create a tiled image on the top-left point. It calculate the minimum number of tiles needed (based on the size of the provided tile)

# USAGE

Include the function in your code

	local tileimage = require( "tileimage" )


Now you can begin to use the function in your code. 

	local bg = tileimage("tile.png", 100, 100, 10) --create 100 images tile.png
	bg.x = 123
	bg.y = 123
	
The function takes 4 required arguments:

	ImagePath - the filename of the image to tile
	width - the width of all tiles
	height - the height of all tiles
	tileSize - size of one tile

The function takes 2 optional arguments:

	offSetX - how much to shift all tiles on the x axis
	offSetY - how much to shift all tiles on the y axis


Doing this, you can then use an build in method to self-destruct the tiles:

	bg.remove()
