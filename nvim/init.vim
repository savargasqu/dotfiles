" NOTE: Plugins and mappings are in init.vim. Options are in vimrc
source $HOME/.config/nvim/vimrc

" TODO move to native LSP when 0.5 stabilises
runtime coc.vim

lua << EOF
    require('config')
EOF

"" LIGHTLINE
let g:lightline = {
\   'colorscheme': 'ayu_mirage',
\   'active':{'left':  [['mode', 'paste'],
\                       ['gitbranch', 'readonly', 'filename', 'modified'],
\                       ['cocstatus', 'cocCurrentFun']],
\             'right': [['percent', 'lineinfo'],
\                       ['spell', 'filetype', 'fileencoding', 'fileformat']]},
\   'component_function': {'cocstatus': 'coc#status',
\                          'cocCurFun': 'CocCurrentFunction'}}

" wiki.vim function
function CreateLinkNames(text) abort
  return strftime("%Y%m%dT%H%M-") . substitute(tolower(a:text), '\s\+', '-', 'g')
endfunction

