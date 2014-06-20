SwitchySharp Configurations
==================

Intro
-----

This is the [SwitchySharp extension for Chrome](https://chrome.google.com/webstore/detail/proxy-switchysharp/dpplabbmogkhghncfbfdeeokoefdjegm?hl=en-US).

Here the backup of configuration file (SwitchyOptions.bak) is encoded in base64.

Usage
-----

### Chrome ###

* To load options:
  1. Open [SwitchySharp options page](chrome-extension://dpplabbmogkhghncfbfdeeokoefdjegm/options.html).
  2. Go to Import/Export tab.
  3. In the section SwitchySharp Options, use `Restore from file` (or `Restore from Online`) to load the configuration file.

* To save options:
  1. Use `Make Backup` in above step 3. Save your backup file in this folder.
  2. To easily track the modifications, use the following command to decode the backup file to well-formatted JSON file.
  ```
  python ./ss_convert.py SwitchyOptions.bak options.json
  ```
