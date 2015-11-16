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
df-goto_conf       : navigate to configurations directory
df-goto_pbks       : navigate to playbooks subdirectory
df-goto_platform   : navigate to df platform directory
df-goto_lms        : navigate to lms subdirectory
df-goto_cms        : navigate to cms subdirectory
df-update_dotfiles : update df-dotfiles

----- Functions -------
df-list             : list all manage.py commands
df-create_user      : create create a new user using given email. defaults to user@example.com
df-change_password  : change password for specified username. defaults to user
df-promote_to_staff : promote user to staff using given email. defaults to user@example.com
df-django_shell     : launch the django shell
df-service_status   : see what services are running
df-restart_dfapp   : restart lms/cms services
df-restart_workers  : restart worker services
df-compile_assets   : compile assets manually
df-migrate          : run migrations
```
