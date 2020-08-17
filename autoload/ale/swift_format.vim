" Author: tokorom https://github.com/tokorom
" Description: use apple/swift-format (https://github.com/apple/swift-format)

function! ale#swift_format#Enable() abort
    call ale#linter#Define('swift', {
    \   'name': 'swift-format',
    \   'executable': 'swift-format',
    \   'command': 'swift-format lint %s',
    \   'output_stream': 'stderr',
    \   'callback': 'ale#handlers#swift_format#Handle',
    \})
endfunction
