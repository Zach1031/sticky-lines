if exists('g:loaded_sticky_lines') | finish | endif

command -nargs=? Sls call luaeval("require('sticky_lines').set(_A[1])", [<f-args>]) 
command -nargs=? Slj call luaeval("require('sticky_lines').jump(_A[1])", [<f-args>]) 

let g:loaded_sticky_lines = 1
