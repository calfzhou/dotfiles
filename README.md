Lots of Configurations
======================

It's time to make as many as possible configuration files under version control.

This can also help me to sync configurations among computers or systems.

The `master` branch is for general conditions. System based branches will be used
for different systems and/or environments.

About Git Submodules
--------------------

`git submodule init`

`git submodule update`

General Usage
-------------

Generally speaking, to use these configurations, just create symbol links from
cloned folder to the desired destination.

On Linux and MacOS, simply use `ln -s TARGET LINK_NAME` to create symbol links.

On Windows, there are several ways:

1.  Use [`junction LINK_NAME TARGET_FOLDER`](http://technet.microsoft.com/en-us/sysinternals/bb896768.aspx)
    to create junction (soft) link to a folder;
1.  Use `ln.exe TARGET_FILE LINK_NAME` to create hard link to a file. But the target and link name
    must be in the same driver.
1.  Use `mklink` (should run as adiministrator) to create either kind of link:
    1.  `mklink  LINK_NAME TARGET` to create a symbol link file.
    1.  `mklink /d LINK_NAME TARGET` to create a symbol link to a folder.
    1.  `mklink /j LINK_NAME TARGET` to create a junction.
    1.  `mklink /h LINK_NAME TARGET` to create a hard link.
