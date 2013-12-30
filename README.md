Lots of Configurations
======================

It's time to make as many as possible configuration files under version control.

This can also help me to sync configurations among computers or systems.

The `master` branch is for general conditions. System based branches will be used
for different systems and/or environments.

General Usage
-------------

Generally speaking, to use these configurations, just create symbol links from
cloned folder to the desired destination.

On Linux and MacOS, simply use `ln -s TARGET LINK_NAME` to create symbol links.

On Windows, use [`junction LINK_NAME TARGET_FOLDER`](http://technet.microsoft.com/en-us/sysinternals/bb896768.aspx)
to create symbol link to a folder; and `ln.exe TARGET_FILE LINK_NAME` to create
hard link to a file.
