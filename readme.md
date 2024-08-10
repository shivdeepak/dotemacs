# installation
make sure there is no existing ~/.emacs and ~/.emacs.d and
run the install script.

```shell
./install.sh
```

# `e` command line

add `$PROJECT_DIR/bin` to `$PATH` and that will make `e` available
over command line.

`e` utilizes `emacsclient` to load a given file into currently running
emacs session. if there is no existing emacs session then it will
launch a new one.

eg usage:

```shell
e filename.py
```
