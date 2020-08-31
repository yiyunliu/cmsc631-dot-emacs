# Description
This repository is intended for those who never use emacs and want to start with a fresh coq environment. 
# Usage
First, switch to your home directory:
```
cd ~
```
Next, make sure there is no existing configuration files. Here's a list of them:
- `.emacs.d`
- `.emacs`

Once you remove or backup&rename those files, clone this repository into your home directory as `.emacs.d`:
```
git clone https://github.com/yiyunliu/cmsc631-dot-emacs .emacs.d
```
and it's done!

Note that the first time you launch emacs, there could be an error message about file not found. The issue disappears if you 
close emacs and launch it for the second time.
