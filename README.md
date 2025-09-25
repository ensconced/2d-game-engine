# Setup

This repository includes a nix flake-based dev shell. This means you should be able to install nix and then, within this repository, run:

```
nix develop 
```

...to be dropped into a shell where all the dependencies (such as gcc, SDL, lua) are available. If you're using direnv, this should automatically happen for you when you cd into the repository directory.

# Compiling and Running

To compile and run the project:

```
make run
```

# Development

To get clangd-based LSPs working correctly in your editor you'll need to generate `compile\_flags.txt`.

```
make compile_flags.txt
```


