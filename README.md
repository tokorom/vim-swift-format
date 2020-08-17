# vim-swift-format

Use [apple/swift-format](https://github.com/apple/swift-format) in Vim

- for [ale](https://github.com/w0rp/ale) plugin

## Installation

### with Vim package management

```sh
mkdir -p ~/.vim/pack/git-plugins/start
git clone https://github.com/tokorom/vim-swift-format.git ~/.vim/pack/git-plugins/start/fim-swift-format
```

### with Vim-Plug

```vim
Plug 'tokorom/vim-swift-format'
```

### with Volt

```sh
volt get w0rp/ale
volt get tokorom/vim-swift-format
```

## Required Configuration

```vim
let g:ale_linters = {
\   'swift': ['swift-format'],
\}

let g:vim_swift_format_use_ale = 1
```

## Optional Configuration

```vim
" default
let g:vim_swift_format_executable = 'swift-format'
let g:vim_swift_format_lint_command = 'swift-format lint %s'
let g:vim_swift_format_format_command = 'swift-format format --in-place %s'
```

## Execute formatting command

```vim
:SwiftFormatFormat
```
