# Server-Selector

A batch file that could help with starting a test server easier.

Requirements:
- A system with Java 8+
- A system that can run .bat files.
- A folder so it can store the files.
- Internet connection.
- Approx. 50-100mb so it can download at least 1 server jar.

Tested on:
- Windows 10 Java 8

# Setup

1. Firstly, download the `server_selector.bat` file from this repo.
2. Place the downloaded file into an empty folder. (Or any folder, empty folders are usually better.)
3. Double click the file, This will open a window that will have a prompt with 3 options.
4. By pressing the correct key on your keyboard [1,2,3] It will bring up the correct prompt for that option.
So for example, Pressing `1` will show the PaperMC list.
5. Due to the nature of this being a single bat file, It gets the rest of the batch files from this repo, and it also creates the folders to store the files in.
6. Depending on the option, you will get some more options, [PaperMC](https://papermc.io) will show 1.12.2 all the way to 1.16.5. Proxies will show [GeyserMC](https://geysermc.org) or [Waterfall](https://papermc.io/downloads#Waterfall). Other will show [Glowstone](https://github.com/GlowstoneMC/Glowstone) and [VIAaaS](https://github.com/ViaVersion/VIAaaS) (These two are currently disabled due to an issue, will be reimplemented in the future, or swapped out for other projects seeing that Glowstone is inactive as of Feb 10.)
7. After selecting the final option, It will bring up a prompt showing if you would like to reset this server to default. However, If this is the first time starting that test server, select option 2. `No` As this will just download the new jar normally without attempting to reset, failing and booting as normal.
8. And you are done! Server should of started normally. In the case of PaperMC, The servers start with port 25565 TCP, Geyser on port 19132 UDP, and Waterfall on 25575 TCP.
9. To access the server or add plugins/edit files, Go to the folder where the bat file is.
`Paper/1.12.2`
`Paper/1.13.2`
`Paper/1.14.4`
`Paper/1.15.2`
`Paper/1.16.5`
`Proxies/Waterfall`
`Proxies/Geyser`
`Other/VIAaas`
`Other/Glowstone`


# Changelog
- Added more information to the README.md (5/18/21)
- Fixed some directory issues which prevented boot. (5/18/21)

# Credit
Credit goes to any server software featured in this list.

"A bridge/proxy allowing you to connect to Minecraft: Java Edition servers with Minecraft: Bedrock edition." - [GeyserMC](https://github.com/GeyserMC/Geyser)

"High performance Spigot fork that aims to fix gameplay and mechanics inconsistencies." - [Paper](https://github.com/PaperMC/Paper)

"BungeeCord fork that aims to improve performance and stability." - [Waterfall](https://github.com/PaperMC/Waterfall)

"A fast, customizable and compatible open source server for Minecraft: Java Edition." - [Glowstone](https://github.com/GlowstoneMC/Glowstone)

"ViaVersion as a Service - standalone ViaVersion proxy." - [VIAaas](https://github.com/ViaVersion/VIAaaS)

And more to be added.
