REM This line creates the "pocket-gnw-roms" folder if it doesn't exist
mkdir "pocket-gnw-roms" 2>nul

REM This line calls the fpga-gnw-romgenerator tool with specified arguments
call cmd /K fpga-gnw-romgenerator --mame-path "mame-gnw-roms" --output-path "pocket-gnw-roms" supported
