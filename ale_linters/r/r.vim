" Author: Michel Lang <michellang@gmail.com>
" Description: This file adds support for checking R code with lintr.

call ale#linter#Define('r', {
\   'name': 'lintr',
\   'executable': 'Rscript',
\   'command': g:ale#util#stdin_wrapper . ' .lintr Rscript -e "lintr::lint(commandArgs(TRUE))"',
\   'callback': 'ale#handlers#HandleGCCFormat',
\   'output_stream': 'both',
\})
