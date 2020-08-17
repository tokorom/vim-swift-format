" Author: tokorom https://github.com/tokorom
" Description: use apple/swift-format (https://github.com/apple/swift-format)

function! ale#swift_format#Enable() abort
    call ale#linter#Define('swift', {
    \   'name': 'swift-format',
    \   'executable': g:vim_swift_format_executable,
    \   'command': g:vim_swift_format_lint_command,
    \   'output_stream': 'stderr',
    \   'callback': 'ale#handlers#swift_format#Handle',
    \})
endfunction
