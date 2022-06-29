package.path = package.path .. ";libs/?.lua"

local lfs = require("lfs")
local ut = require("UT")
local argparse = require("argparse")

local imagePath
local convertedImagePath
local resX, resY
local ocifVersion
local convertAsBraille
local enableDithering
local opacity

local args, options


do --parse args
    local parser = argparse("Image converter", "A CLI tool to convert PNG and JPG images to OCFI images")

    parser:argument("input", "Input file path")
    parser:argument("output", "Output file path")
    parser:argument("resX", "The output width resolution in OC pixels.")
    parser:argument("resY", "The output height resolution in OC pixels devided by 2")
    parser:argument("OCIF", "(6-8) The OCIF version")
    parser:argument("brialle", "(0-1) If brialle is used to indirectly double up output resolution")
    parser:argument("dithering", " (0-1) If dithering is enabled")
    parser:argument("opacity", " (0-100) Opacity value")

    parser:flag("-O --overwrite"):target("overwrite")
    

    args, options = parser:parse()
end

--print(ut.tostring(args))

--print("java -jar bin/converter.jar " .. args.input .. " " .. args.output .. " " .. args.resX .. " " .. args.resY .. " " .. args.OCIF .. " " .. args.brialle .. " " .. args.dithering .. " " .. args.opacity)

if tonumber(args.OCIF) < 6 or tonumber(args.OCIF) > 8 then
    print("ERROR: OCIF version out of range.")
    os.exit(10)
end
if args.brialle ~= "0" and args.brialle ~= "1" then
    print("ERROR: brialle version out of range.")
    os.exit(11)
end
if args.dithering ~= "0" and args.dithering ~= "1" then
    print("ERROR: dithering version out of range.")
    os.exit(12)
end
if tonumber(args.opacity) < 0 or tonumber(args.opacity) > 100 then
    print("ERROR: opacity version out of range.")
    os.exit(13)
end


os.exit(os.execute("java -jar bin/converter.jar " .. args.input .. " " .. args.output .. " " .. args.resX .. " " .. args.resY .. " " .. args.OCIF .. " " .. args.brialle .. " " .. args.dithering .. " " .. args.opacity))