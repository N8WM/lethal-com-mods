# lethal-com-mods
MH mod repo for Lethal Company

*Windows Only*

## Description
This is a repository that allows us to manage Lethal Company mods in a scalable way. Anyone can easily clone this repository into their Lethal Company folder and play without needing to worry about installing all of the mods manually. Additionally, if any mods are updated or added to our list, only one person needs to make the necessary changes to their Lethal Company folder and "push" for everyone to have access to "pull" the changes.

## Setup

This tutorial assumes you already have Lethal Company installed. It is important that you follow the steps in this order.

0. If you don't have GIT installed on your device, download it through [this link](https://gitforwindows.org) and follow the installation instructions

1. Open the Lethal Company game folder
   - Open the game folder using Steam
   - `Game settings button` > `Manage` > `Browse local files`

<div align="center">
    <img src="./images/browse.png?raw=true" alt="browse local files" width="500" />
</div><br/>

2. Clear out the game folder
   - Highlight everything, right click one of the highlighted files, and click the delete button

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
    <img src="./images/cd.png?raw=true" alt="cd to game folder" width="500" />
</div><br/>

   - Now press the `Enter` key

6. Clone the `lethal-com-mods` repository
   - Type `git clone https://github.com/N8WM/lethal-com-mods.git .` into the command line (feel free to copy and paste that, but don't forget the dot at the end):

<div align="center">
    <img src="./images/clone.png?raw=true" alt="clone the repo" width="500" />
</div><br/>

   - Press the `Enter` key
   - There should now be some files and folders in the Lethal Company game folder and it should look something like the following image. If the files are not there, the clone command probably failed. Make sure you have GIT installed, and the Lethal Company game folder is completely empty before running the command.

<div align="center">
    <img src="./images/repo.png?raw=true" alt="repo structure" width="500" />
</div><br/>

   - You are now done with the command line

7. Uninstall Lethal Company from Steam
   - We did already remove the game files, but Steam still thinks the game is installed
   - `Game settings button` > `Manage` > `Uninstall`

<div align="center">
    <img src="./images/uninstall.png?raw=true" alt="uninstall" width="500" />
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


## Pulling the most recent changes
If this repository has been updated by someone, you can pull the most recent version pretty easily.
- Open the Lethal Company game folder:
  - `Game settings button` > `Manage` > `Browse local files`
- Double-click the `update.bat` or `update` file (the `.bat` extension may or may not be visible on your computer)
- Your game mods should now be up to date with the repository


## Adding your own mods
Feel free to add your own mods to the Lethal Company game folder like normal, just understand that making changes to existing files on your computer may cause what is known as "merge conflicts" during future updates. If you would like to push your own mods or updates to the repository here on GitHub for everyone to use, there are several additional steps you need to follow. You need to create a GitHub account, configure your computer's Git profile with an SSH key, and make a pull request on a new branch, or I need to add your GitHub account as a contributor. If you are interested in being a contributor or learning more about this process, send me a Discord DM (@.nutch).
