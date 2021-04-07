Jellybeans-nvim: a lua port of jellybeans for neovim
===

![Screenshot](scrot.png)

Instructions
---

**Note**: This colorscheme requires at least Neovim 0.5 (it works fine on current master).

Add to your `init.lua` (this is using
[paq-nvim](https://github.com/savq/paq-nvim), adjust to your package manager):

```
local paq = require('paq-nvim').paq

paq { 'rktjmp/lush.nvim'}
paq { 'metalelf0/jellybeans-nvim' }

cmd('colorscheme jellybeans-nvim')
```

Notes
---

* I directly mapped original colors as strictly as possible; right now, only
  colors already defined in the original colorscheme have been mapped, to get a
  colorscheme as close as possible to the original one. I'll consider adding
  more highlight groups for plugins etc. if requested;

* Treesitter support is basic: it uses the default links defined in
  `nvim-treesitter`, and I didn't customize the treesitter groups. Please
  submit a PR or contact me on reddit if you think anything should be changed /
  improved;

* this was built with [lush.nvim](http://git.io/lush.nvim); for more
  information on Lush and a helper script to setup your repo clone.
