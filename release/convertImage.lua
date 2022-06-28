package.path = package.path .. ";libs/?.lua"

local lfs = require("lfs")
local argParser = require("argparse")

local imagePath
local convertedImagePath
local resX, resY
local ocifVersion
local convertAsBraille
local enableDithering
local opacity



os.exit(os.execute("java -jar bin/converter.jar " .. imagePath .. convertedImagePath .. resX .. resY .. ocifVersion .. convertAsBraille .. enableDithering .. opacity))