--[[
vim.cmd(
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

command! -bang -nargs=* Ag
\ call fzf#vim#ag(<q-args>,
\                 <bang>0 ? fzf#vim#with_preview('up:60%')
\                         : fzf#vim#with_preview('right:50%:hidden', '?'),
\                 <bang>0)
)
local fzf = require("fzf");

vim.keymap.set("n", "<leader>E", fzf.vim.ag);
]]
