## Uninstalling RPG

Ares plugins plug IN easily, but taking them out requires a bit of code fiddling.

1. Run the following command with a coder char: `ruby Rpg.uninstall_plugin(client)`

2. Manually remove all plugin's files from your server (and GitHub fork, if applicable), including:
    * aresmush/plugins/rpg
    * aresmush/game/config/rpg.yml
    * Web portal files - See the /webportal folder in this repo for a specific list of files.

3. [Restart the game engine](https://aresmush.com/tutorials/manage/shutdown.html).