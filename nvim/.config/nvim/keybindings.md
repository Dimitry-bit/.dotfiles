# Nvim Keybindings
---

* Float Terminal
  * New Termainl <leader>ft
  * Toggle Termainl <leader>f

* Startify (Home Page)
    * Return to startify home page <c-n>

* Telescope (fuzzy finder)
    * Find File <leader>ff
    * Live grep <leader>fg
    * buffers <leader>fb
    * help_tags <leader>fh

* NerdTree
  * NERDTreeToggle <A-1> (ALT + 1)

* Vim Commentary
  * Comment/UnComment <space>/

* Coc
  * Use <c-space> to trigger completion.
  * Use `[c` and `]c` to navigate diagnostics

  * Remap keys for gotos
   * gd (coc-definition)
   * gy (coc-type-definition)
   * gi (coc-implementation)
   * gr (coc-references)

  * <leader> rn (coc-rename)
  * <C-A-l> (Ctrl + ALT + l) (coc-format-selected)

  * <leader>a (coc-codeaction-selected)
  * Remap for do codeAction of current line <A-CR> (coc-codeaction)
  * Fix autofix problem of current line <leader>qf (coc-fix-current)

  * Show all diagnostics <space>a :<C-u>CocList diagnostics<cr>
  * Manage extensions <space>e  :<C-u>CocList extensions<cr>
  * Show commands <space>c  :<C-u>CocList commands<cr>
  * Find symbol of current document <space>o  :<C-u>CocList outline<cr>
  * Search workspace symbols <space>s  :<C-u>CocList -I symbols<cr>
  * Do default action for next item <space>j  :<C-u>CocNext<CR>
