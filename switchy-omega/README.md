# SwitchySharp Configurations

## Intro

This is the
[Proxy SwitchyOmega for Chrome](https://chrome.google.com/webstore/detail/proxy-switchyomega/padekgcemlokbadohgkifijomclgjgif).

Here the backup of configuration file OmegaOptions.bak in json.

## Usage

### Chrome

- To load options:
  1. Open [SwitchyOmega options page](chrome-extension://padekgcemlokbadohgkifijomclgjgif/options.html).
  2. Go to Import/Export tab.
  3. In the section SwitchySharp Options, use `Restore from file` (or `Restore from Online`) to load the configuration file.

- To save options:
  1. Use `Make Backup` in above step 3. Save your backup file in this folder.
  2. To easily track the modifications, use the following command to decode the backup file to well-formatted JSON file.

  ``` bash
  python clean_omega.py OmegaOptions.bak omega_options.json
  ```
