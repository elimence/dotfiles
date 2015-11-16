dotfiles.git
============
Clone and run this on a new EC2 instance running Ubuntu 14.04.2 LTS to
configure your `bash` development environment as follows:

```sh
wget https://raw.githubusercontent.com/elimence/dotfiles/master/setup.sh -O - | bash
```

To update an existing setup, do the following

```sh
wget https://raw.githubusercontent.com/elimence/dotfiles/master/update.sh -O - | bash
```

There's also an alias named `update_dotfiles`, you can use this command to update as well

```sh
df-update_script
```

This will setup your brand new instance's bash environment to make it easier to work with edx by greating a bunch of helper aliases and functions to perform common tasks.

You can run `df-help` to view a list of available aliases and functions

```json
----- Aliases -------


----- Functions -------
mkd       : takes directory name. Create directory and cd into it
```
