" Author: tokorom https://github.com/tokorom
" Description: use apple/swift-format (https://github.com/apple/swift-format)

function! swift_format#FormatCurrentBuffer() abort
  let command = substitute(g:vim_swift_format_format_command, "%s", bufname(""), "g")
  :call system(command)
  :e
endfunction
