# perl zip1
Script that makes my life a little bit easier.
Probably useless for most people, created mostly for fun.


# Overview:

Script that simply renames all your files in one directory of your
choice with '.zip1' extension to '.zip', also can extract content from renamed files into newly created folder.

**Whats new:**

# Version 0.3.1:
- Now zip1 uses ```ditto``` instead of ```unzip``` 
- fix: checkdir error: cannot create

# Version 0.3:
- You can now create a 'defaut_dir.txt' in your /perl-zip1 repo and add there your default path. Not working if you're using symlink of the script;
- When you extracting content from archive, it will pack everything up into the newly created folder with current date;

*TODO: Prerequisites.*


# Usage:

```
Usage:
  --dir,-d        Directory where '.zip1' files located (required)
  --unicode,-u    Name of the file contains unicode symbols
  --extract,-e    Extract content from renamed files
  --verbose,-v    Display additional info
  --help,-h       Print this help
```
