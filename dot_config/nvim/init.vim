call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-fugitive' " Git plugin
Plug 'PhilRunninger/nerdtree-buffer-ops' " Highlighter for NERD
Plug 'Nopik/vim-nerdtree-direnter' " Fix issue in which opening a directory in NERDTree opens a new tab
Plug 'nvim-lualine/lualine.nvim' " Better status bar
Plug 'cespare/vim-toml' " TOML syntax
Plug 'mox-mox/vim-localsearch' " Local searching
Plug 'mhinz/vim-signify' " Handy git diff stuff
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'neovim/nvim-lspconfig' " Nvim LSP
Plug 'kabouzeid/nvim-lspinstall' " Autoinstall LSP servers
Plug 'hrsh7th/nvim-compe' " Completion engine
Plug 'onsails/lspkind-nvim' " Pictograms
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'arcticicestudio/nord-vim' " Nord theme (powerline thingamajib)
Plug 'Shatur/neovim-ayu'
Plug 'wakatime/vim-wakatime' " How much time I spend
Plug 'liuchengxu/vim-clap' " Fuzzy search

Plug 'folke/trouble.nvim' " Trouble error display

call plug#end()

" Quite literally the best look and feel every
" let g:material_theme_style = 'gruvbox'
" colorscheme gruvbox

set termguicolors     " enable true colors support
colorscheme ayu

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Line numbers
set nu

" Configure local searching
nmap <leader>/ <Plug>localsearch_toggle

" Setup tabing shortcuts
" We don't use built in tab support
nnoremap <silent>    <S-Left> :BufferPrevious<CR>
nnoremap <silent>    <S-Right> :BufferNext<CR>
nnoremap <silent>    <S-1> :BufferGoto 1<CR>
nnoremap <silent>    <S-2> :BufferGoto 2<CR>
nnoremap <silent>    <S-3> :BufferGoto 3<CR>
nnoremap <silent>    <S-4> :BufferGoto 4<CR>
nnoremap <silent>    <S-5> :BufferGoto 5<CR>
nnoremap <silent>    <S-6> :BufferGoto 6<CR>
nnoremap <silent>    <S-7> :BufferGoto 7<CR>
nnoremap <silent>    <S-8> :BufferGoto 8<CR>
nnoremap <silent>    <S-c> :BufferClose<CR>

autocmd StdinReadPre * let s:std_in=1

" Exit Vim if terminal in the only tab left
autocmd TabEnter * if stridx(@%, '/bin/zsh') != -1 | quit | endif 

" Setup YouCompleteMe goto shortcuts
nnoremap <leader>ji :YcmCompleter GoTo<CR>

" Setup YouCompleteMe semantic information shortcuts
nnoremap <leader>gt :YcmCompleter GetType<CR>

" Setup YouCompleteMe refactoring shortcuts
nnoremap <leader>rr :YcmCompleter FixIt<CR>
nnoremap <leader>rn :YcmCompleter RefactorName<CR>
nnoremap <leader>rf :YcmCompleter Format<CR>

" Setup random YouCompleteMe shortcuts
nnoremap <leader>e :YcmShowDetailedDiagnostic<CR>

" Move back to file that is wanted
autocmd BufReadPost * tabfirst

" Show all the errors
let g:ycm_max_diagnostics_to_display = 1000

" Enable Rust for YCM
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/global_extra_conf.py'

" Use 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Setup character encoding
set encoding=UTF-8

" Set two semicolons to be escape
imap ;; <Esc>

" Auto change directory
set autochdir

" Mouse support
set mouse=a

" Nvim tree settings
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:nvim_tree_icons = {
    \ 'default': '~',
    \ 'symlink': '⤫',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "䷇",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "␡",
    \   'ignored': "#"
    \  },
    \ 'folder': {
    \   'arrow_open': "+",
    \   'arrow_closed': "-",
    \   'default': "~",
    \   'open': "~",
    \   'empty': "-",
    \   'empty_open': "-",
    \   'symlink': "⤫",
    \   'symlink_open': "⤫",
    \   }
    \ }

lua << EOF
require'nvim-tree'.setup {
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = 'left',
        auto_resize = false,
        mappings = {
            custom_only = false,
            list = {}
        }
    },
}

require('ayu').setup({
    mirage = false,
    overrides = {},
})

require('lualine').setup{
    options = {
        theme = 'nord',
        section_separators = { left = '', right = ''},
        component_separators = { left = '', right = ''}
    }
}

require'lspconfig'.rust_analyzer.setup{}

require('rust-tools').setup({})

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}

require('lspkind').init({
    with_text = true,

    preset = 'codicons',

    symbol_map = {
      Text = "!",
      Method = "𝑓",
      Function = "𝑓",
      Constructor = "𝑓⁺",
      Field = "𝑣⁺",
      Variable = "𝑣",
      Class = "𝑐",
      Interface = "⚣",
      Module = "⚢",
      Property = "p",
      Unit = "𐄷",
      Value = "𝑓",
      Enum = "༕",
      Keyword = "⎇",
      Snippet = "ℇ",
      Color = "⾊",
      File = "⌮",
      Reference = "※",
      Folder = "❅",
      EnumMember = "e⁺",
      Constant = "ℎ",
      Struct = "䷦",
      Event = "༕",
      Operator = "⨕",
      TypeParameter = ""
    },
})
EOF

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

nnoremap <silent><nowait> <C-x> :Clap files<CR>
nnoremap <silent><nowait> <C-s> :Clap grep2<CR>
nnoremap <silent><nowait> <C-space> :Clap<CR>

finish

