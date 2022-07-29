
local tileimage = require"tileimage"

local AllTilesWidth = display.actualContentWidth - 100 * 2
local AllTilesHeight = 600
local oneTileSize = 600 / 1.5
local left = 100
local top = 80

local BigTiles = tileimage("gray.png", AllTilesWidth, AllTilesHeight, oneTileSize)
BigTiles.x = left
BigTiles.y = top

-- ========== --
local AllTilesWidth = display.actualContentWidth
local AllTilesHeight = 600
local oneTileSize = 600
local left = 0
local top = BigTiles.y + BigTiles.height + 100

local tiles = tileimage("gray.png", AllTilesWidth, AllTilesHeight, oneTileSize)
tiles.x = left
tiles.y = top

-- ========== --
local AllTilesWidth = display.actualContentWidth
local AllTilesHeight = 600
local oneTileSize = 600
local left = 0
local top = tiles.y + tiles.height + 100

local offSetX = 60
local offSetY = -60

local ShiftedTiles = tileimage("gray.png", AllTilesWidth, AllTilesHeight, oneTileSize, offSetX, offSetY)
ShiftedTiles.x = left
ShiftedTiles.y = top

-- ========== --

local top = ShiftedTiles.y + ShiftedTiles.height + 100

local offSetX = 0

local sinCounter = 0

local moveTiles = {remove = function() end}
local function offSetDemonstration()
	offSetX = offSetX + 1
	sinCounter = sinCounter + .03
	
	local offSetY = math.sin(sinCounter)*oneTileSize*1.1

	local newTiles = tileimage("gray.png", AllTilesWidth, AllTilesHeight, oneTileSize, offSetX, offSetY)
	newTiles.y = top
	moveTiles.remove()
	moveTiles = newTiles

end

Runtime:addEventListener("enterFrame", offSetDemonstration)
