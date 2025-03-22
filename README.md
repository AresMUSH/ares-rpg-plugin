# General RPG

## Status

**Supported** Although not part of the main Ares code release, this is a supported plugin.  Report any problems you encounter: https://aresmush.com/feedback

See release notes to determine which versions of AresMUSH are compatible.

> Note: This code has been run through its paces on a test server, but hasn't been playtested much on a real game yet.   The first game to implement this will receive extra technical support from Faraday to iron out any bugs.

## Overview

This plugin is intended for use when you're using a RPG system without any other code. Sheets would be stored either in plain text or an embedded URL/PDF, and dice are rolled using the general 'dice' command (help dice). 

You can set both the sheet itself and some freeform notes about it. Sheets can only be edited by admin after approval.

## Web Portal

The plugin includes web portal controls to set your sheet details during chargen and view them on a character profile. You can also roll dice from within web scenes.

## Installation

1. Disable the FS3 plugins, as explained in [Enabling and Disabling Plugins](https://aresmush.com/tutorials/config/plugins/).
2. In the game, run `plugin/install <github url>`.
3. Go to Admin->Setup and change your [chargen stages](https://aresmush.com/tutorials/config/chargen.html#stages).  
    * Remove the FS3 'abilities' stage. 
    * You probably also want to add some custom text to the 'sheets' step to explain how character sheets work on your game.

## Configuration

Configuration options can be found in game/config/rpg.yml.

`rpg_blurb` - The instructions that appear above the traits web chargen controls.

`public_sheets` - Set to 'true' to allow everyone to view sheets.  'false' will limit viewing to staff with the **`rpg_admin`** permission.

`sheet_format` - Can be embed, url, or text. Embed is if you are embedding PDFs or frame-friendly web pages for your character sheets.  URL just links to a URL.  Text contains markdown text.

If you're using the embed format, you can change the appearance of the embedded frame by adding custom formatting (such as height and width) to the `rpg-embed-sheet` style in your [custom CSS](https://aresmush.com/tutorials/config/website.html#custom-css-style). For example:

    .rpg-embed-sheet {
      width: 100%;
      height: 300px;
    }

## Uninstalling

Removing the plugin requires some code fiddling.  See [Uninstalling RPG](Uninstalling.md).

## License

Same as [AresMUSH](https://aresmush.com/license).
