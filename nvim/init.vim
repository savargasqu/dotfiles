" NOTE: Plugins and mappings are in init.vim. Options are in vimrc
source $HOME/.config/nvim/vimrc

lua << EOF

    -- TODO put these in a readonly table
    SL = '<silent><leader>'
    function noremap(str) vim.cmd('noremap ' .. str) end

    require('mappings')
    require('plugins')

EOF

" TODO move to native lsp
runtime coc.vim "CoC settings go here

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

