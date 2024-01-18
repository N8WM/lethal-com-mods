# lethal-com-mods
MH mod repo for Lethal Company

*Windows Only*

## Description
This is a repository that allows us to manage Lethal Company mods in a scalable way. Anyone can easily clone this repository into their Lethal Company folder and play without needing to worry about installing all of the mods manually. Additionally, if any mods are updated or added to our list, only one person needs to make the necessary changes to their Lethal Company folder and "push" for everyone to have access to "pull" the changes.

## Table of Contents
- [Setting it all up](#setup) (required)
- [Updating to the most recent changes](#updating-to-the-most-recent-changes) (required later on for getting the latest mods and updates in this repo)
- [Disabling and reenabling mods](#disabling-or-reenabling-mods) (useful for playing with people who don't have mods)
- [Adding your own mods](#adding-your-own-mods) (useful for customizing your own set of mods)
- [Resolving merge conflicts](#resolving-merge-conflicts) (useful if you make your own changes to your mods and have issues updating)

## Setup

This tutorial assumes you already have Lethal Company installed. It is important that you follow the steps CAREFULLY and IN THIS ORDER.

0. If you don't have Git installed on your device, download it through [this link](https://gitforwindows.org)
   - Double-click the downloaded file and follow the installation instructions
   - I recommend using all of the default options
   - You can remove the installation file once you are finished installing Git

1. Open the Lethal Company game folder
   - Open the game folder using Steam
   - `Game settings button` > `Manage` > `Browse local files`

<div align="center">
    <img src="./images/browse.png?raw=true" alt="browse local files" width="90%" />
</div><br/>

*IMPORTANT - Ensure you are in the Lethal Company folder, not your Steam library*

2. Clear out the game folder
   - Highlight everything, right-click one of the highlighted files, and click the delete button

3. Copy the game folder address to your clipboard
   - In Windows 11 you can right-click the folders bar and click on "Copy Address"

<div align="center">
    <img src="./images/address.png?raw=true" alt="copy folder address" width="500" />
</div><br/>

4. Open your computer's command line
   - Hold the Windows key and press the `r` key
   - Type the word `cmd` into the prompt and click "OK"

5. `cd` into your Lethal Company game folder in the command line
   - Type `cd <address>` into the command line, (pasting in the folder address you copied earlier instead of typing `<address>`)
      - To paste the address after `cd `, you can hold the `Ctrl` key and press the `v` key
   - This is what mine looked like:

<div align="center">
    <img src="./images/cd.png?raw=true" alt="cd to game folder" width="90%" />
</div><br/>

   - Now press the `Enter` key

6. Clone the `lethal-com-mods` repository
   - Type `git clone https://github.com/N8WM/lethal-com-mods.git .` into the command line (feel free to copy and paste that, but don't forget the dot at the end):

<div align="center">
    <img src="./images/clone.png?raw=true" alt="clone the repo" width="90%" />
</div><br/>

   - Press the `Enter` key
   - There should now be some files and folders in the Lethal Company game folder and it should look something like the following image, plus or minus a few items. If the files are not there, the clone command probably failed. Make sure you have Git installed, and the Lethal Company game folder is completely empty before running the command.

<div align="center">
    <img src="./images/repo.png?raw=true" alt="repo structure" width="500" />
</div><br/>

   - You are now done with the command line

7. Uninstall Lethal Company from Steam
   - We did already remove the game files, but Steam still thinks the game is installed
   - `Game settings ` > `Manage` > `Uninstall`

<div align="center">
    <img src="./images/uninstall.png?raw=true" alt="uninstall" width="90%" />
</div><br/>

8. Reinstall Lethal Company
   - Click the install button on Steam and wait for the installation to complete
   - You should now be all set up!

9. Verify it worked
   - Boot up the game and click Online
   - If there is a small image at the bottom left of the screen that says a version number and the word "MOD" after it, the setup was successful

<div align="center">
    <img src="./images/v49.png?raw=true" alt="version mod image" width="500" />
</div><br/>


## Updating to the most recent changes
If this repository has been updated by someone, you can pull the most recent version pretty easily.
- Open the Lethal Company game folder:
  - `Game settings button` > `Manage` > `Browse local files`
- Double-click the `update.bat` or `update` file (the `.bat` extension may or may not be visible on your computer)
- Your game mods should now be up to date with the repository

If you have merge conflicts, see the [resolving merge conflicts](#resolving-merge-conflicts) section. This shouldn't happen unless you make changes to the mods yourself.


## Disabling or reenabling mods
If you wish to disable mods to play with someone who does not have them, there is a script to do this.
- Open the Lethal Company game folder:
  - `Game settings button` > `Manage` > `Browse local files`
- Double-click the `toggle_mods.bat` or `toggle_mods` file (the `.bat` extension may or may not be visible on your computer)
- This will disable your mods if they were previously enabled
- Double-click the file again to reenable the mods


## Adding your own mods
Feel free to add your own mods to the Lethal Company game folder like normal, just understand that making changes to existing files on your computer may cause merge conflicts during future updates (see the [resolving merge conflicts](#resolving-merge-conflicts) section for details). If you would like to push your own mods or updates to the repository here on GitHub for everyone to use, there are several additional steps you need to follow. You need to create a GitHub account, configure your computer's Git profile, add an SSH key, and either make a pull request on a new branch, or I need to add your GitHub account as a contributor. If you are interested in being a contributor or learning more about this process, send me a Discord DM.


## Resolving merge conflicts
If you have made changes to your own mods that conflict with the updates you are pulling, you may have what is known as "merge conflicts" when pulling the most recent changes. If you have merge conflicts, you will see a message similar to the one in the following picture when running the update script (likely with different files than `README.md` though):

<div align="center">
    <img src="./images/conflicts.png?raw=true" alt="merge conflicts" width="90%" />
</div><br/>

If this is the case and you would like to undo your own changes and update with the most recent changes to this repository, You may do so.

- Ensure your mods are *enabled* using the `toggle_mods` file, as seen in the [disabling or reenabling mods](#disabling-or-reenabling-mods) section
   - Running the script should notify you whether the mods are now disabled or enabled
- Follow steps 1, 3, 4, and 5 in the Setup (do not clear out the game folder, skip that step)
- Now with your command line open, type `git stash` and press the `Enter` key
- Now you should be able to run the update script with no issues
- [OPTIONAL] **If you know what you are doing** and want to get your own changes back, type `git stash pop` into the command line and press `Enter`
   - Understand that you will need to manually resolve the merge conflict, I cannot help you with that in this tutorial


## Mods included in this repository
- [BepInEx](https://thunderstore.io/c/lethal-company/p/BepInEx/BepInExPack/)
- [LC API](https://thunderstore.io/c/lethal-company/p/2018/LC_API/)
- [Runtime Netcode Patcher](https://thunderstore.io/c/lethal-company/p/Ozone/Runtime_Netcode_Patcher/) (a More Emotes dependency)
- [BiggerLobby](https://thunderstore.io/c/lethal-company/p/bizzlemip/BiggerLobby/)
- [Skinwalkers](https://thunderstore.io/c/lethal-company/p/RugbugRedfern/Skinwalkers/)
- [LateCompany](https://thunderstore.io/c/lethal-company/p/anormaltwig/LateCompany/)
- [More Emotes](https://thunderstore.io/c/lethal-company/p/Sligili/More_Emotes/)
- [Helmet Cameras](https://thunderstore.io/c/lethal-company/p/RickArg/Helmet_Cameras/)

## To be added soon
- [TooManyEmotes](https://thunderstore.io/c/lethal-company/p/FlipMods/TooManyEmotes/)
