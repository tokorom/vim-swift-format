" Author: tokorom https://github.com/tokorom
" Description: handle apple/swift-format (https://github.com/apple/swift-format)

call ale#linter#Define('swift', {
\   'name': 'swift-format',
\   'executable': 'swift-format',
\   'command': 'swift-format lint %s',
\   'output_stream': 'stderr',
\   'callback': 'ale#handlers#swift_format#Handle',
\})

call ale#fix#registry#Add(
\   'swift-format',
\   'ale#fixers#swift_format#Fix',
\   'swift',
\   'Apply apple/swift-format to a file.',
\})
