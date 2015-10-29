function! PLatexFormat()

python << EOF

import vim
print vim.current.window.cursor[0]
vim.current.buffer[vim.current.window.cursor[0] - 1] = "aaaa"

EOF
endfunction
