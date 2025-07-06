# custom-nvim

Customized neovim images for single language use.

## Build and run locally

Build and run the targeted language, with the current directory mounted to the working directory.

```text
$ podman build -t rubynvim --target ruby .
$ podman run --rm -it -v ./:/wd rubynvim
```

# To-do

* Keybinds
* Additional plugins
* LSP configurations
