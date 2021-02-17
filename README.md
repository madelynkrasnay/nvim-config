# Neovim Config Files

This is my Neovim configuration. You're welcome to use it for inspiration or to
copy it outright and make it your own. If you're doing the latter, I recommend
forking the project so you can continue to maintain the configuration in git.


## Installation

This project is intended to be your whole nvim config directory.

`~/.config/nvim` (MacOS/Linux)
`$HOME\AppData\Local\nvim` (Windows)

If you have one of those, you'll have to rename or delete it first.

MacOS/Linux

```
git clone https://github.com/jkrasnay/nvim.git ~/.config/nvim
```

Windows

```
git clone https://github.com/jkrasnay/nvim.git ~/AppData/Local/nvim
```

Upon first staring nvim you'll get some errors since the plugins are not yet
loaded. From within nvim, run the following:

```
:PlugInstall
```

...and let it do it's thing, then quit and restart nvim.

## CoC and Clojure

Currently the configuration uses CoC and clojure-lsp for completion. For this
to work, download the clojure-lsp GraalVM binary and put it on your path
(`~/.local/bin` on MacOS).

I've configured clojure-lsp on the Erbium project by adding the file
`.lsp/config.edn` to the project root:

```
{:source-paths ["src/api-test/clj"
                "src/dev/clj"
                "src/main/clj"
                "test/main/clj"]
 :auto-add-ns-to-new-files? true}
```

I also haven't configured CoC to automatically install any CoC plugins, so
you'll have to run `:CocInstall coc-json`, etc.
