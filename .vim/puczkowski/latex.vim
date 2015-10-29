function! PLatexFormat()

python << EOF

import vim
import re
print vim.current.window.cursor[0]
index = vim.current.window.cursor[0] - 1 
current = vim.current.buffer[index] 
blines = vim.current.buffer[:index] 
alines = vim.current.buffer[index + 1:] 
matched = re.match(".begin\{(.*)\}", current)
if matched is not None:
    blines.append(current)
    blines.append("")
    blines.append("\end{%s}" % matched.group(1) )
else:
    blines.append(current)
vim.current.buffer[:] = blines + alines 
vim.current.window.cursor = (index + 2, vim.current.window.cursor[1])



EOF


endfunction

command! -narg=0 Lbcomplete call PLatexFormat()
map <C-p> :Lbcomplete<cr>
