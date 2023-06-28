# Dummy guide to patching G&W MAME Roms for Pocket (Using Windows)

If people are stuck and cant figure out how to patch their MAME Roms using the [instructions posted by agg23](https://github.com/agg23/fpga-gameandwatch/blob/master/docs/rom_generator.md) this guide might help.

### You will need:
- MAME Rom ZIPs ([Search Google for Roms](https://www.google.com/search?q=mame+game+and+watch+roms))
- Artwork ZIP for each game. ([Download artwork from somewhere like here](https://www.progettosnaps.net/artworks/artworks_files.php?romname=gnw))
- The ROM Generator ([Download the file from the latest release that ends in "Tools.zip"](https://github.com/agg23/fpga-gameandwatch/releases))
- My custom `patch.bat` file that will run the appropriate commands for you. ([Download from github](https://github.com/random11x/agg23-fpga-gameandwatch-hand-hold-guide/blob/main/patch.bat) or, save the target of [this link](https://raw.githubusercontent.com/random11x/agg23-fpga-gameandwatch-hand-hold-guide/main/patch.bat) as `patch.bat`)
  
### Now that you have everything follow these steps:

1. Unzip the contents of the tools archive.
2. Open File Explorer and navigate to the extracted files and open the `windows` subfolder from the archive.
   ![image](https://github.com/random11x/agg23-fpga-gameandwatch-hand-hold-guide/assets/137963515/b72554dd-b850-47bc-b2fd-3a7cc6878ab5)
4. In the `windows` folder create a new folder called `mame-gnw-roms`.
5. In the `mame-gnw-roms` folder create two new folders `artwork` and `roms`.
    Your directories should look like this:
    ```cmd
    agg23.GameAndWatch_XXXX-Tools/
    └── windows/
        └── mame-gnw-roms/
            ├── artwork/
            └── roms/
    ```
6. Place your artwork zips in the `artwork` folder and your MAME rom zips in the `roms` folder. (Do not unzip the individual rom and artwork files.)
7. Copy the `patch.bat` file to the `windows` folder.
   ![image](https://github.com/random11x/agg23-fpga-gameandwatch-hand-hold-guide/assets/137963515/6919f414-dc2e-40e2-b8f5-807f0ca1dafb)
8. Run the `patch.bat` file by double clicking on it. It will generate a `pocket-gnw-roms` folder that will contain the patched roms.
   ![image](https://github.com/random11x/agg23-fpga-gameandwatch-hand-hold-guide/assets/137963515/38d397c3-0a8a-48b4-a323-96bd9206b32e)
10. Copy those roms to your Pocket SD card in the `/Assets/gameandwatch/common/` folder.

### Note:
If you get this error:
```cmd
Processing device ←[32mgnw_ball←[0m

thread 'main' panicked at 'called `Result::unwrap()` on an `Err` value: Custom { field: "unknown variant `collection`, expected one of `bounds`, `element`, `screen`" }', src\layout.rs:139:80
note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
```
That means there is a problem with the artwork you are using, try a different artwork zip.

### Still need help?
You can also join the [FPGAming Discord Server](https://discord.gg/aCcDhVtmYg) if you have other questions.
