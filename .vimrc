""""""""""""""""""""""""""""""
" �e��I�v�V�����̐ݒ�
""""""""""""""""""""""""""""""
" �t�@�C���G���R�[�h
set fileencoding=utf-8
"�N���b�v�{�[�h�g�p
set clipboard=unnamed,autoselect
"undofile���쐬���Ȃ�
set noundofile
"200�R�}���h���L�^
set history=200
" �^�O�t�@�C���̎w��(�ł��^�O�W�����v�͎g�������Ƃ��Ȃ�)
set tags=~/.tags
" �X���b�v�t�@�C���͎g��Ȃ�(�Ƃ��ǂ��ʓ|�Ȍx�����o�邾���Ŗ��ɗ��������Ƃ��Ȃ�)
set noswapfile
" �o�b�N�A�b�v�t�@�C�������Ȃ�
set nobackup
" �J�[�\�������s�ڂ̉���ڂɒu����Ă��邩��\������
set ruler
" �R�}���h���C���Ɏg�����ʏ�̍s��
set cmdheight=2
" �G�f�B�^�E�B���h�E�̖�������2�s�ڂɃX�e�[�^�X���C�����펞�\��������
set laststatus=2
" �X�e�[�^�X�s�ɕ\����������̎w��(�ǂ����炩�R�s�y�����̂ōׂ����Ӗ��͂킩���Ă��Ȃ�)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" �X�e�[�^�X�s�Ɍ��݂�git�u�����`��\������
"set statusline+=%{fugitive#statusline()}
" �E�C���h�E�̃^�C�g���o�[�Ƀt�@�C���̃p�X��񓙂�\������
set title
" �R�}���h���C�����[�h��<Tab>�L�[�ɂ��t�@�C�����⊮��L���ɂ���
set wildmenu
" ���͒��̃R�}���h��\������
set showcmd
" �ҏW���̃t�@�C�����ύX���ꂽ�玩���œǂݒ���
set autoread
" �o�b�t�@�ŊJ���Ă���t�@�C���̃f�B���N�g���ŃG�N�X�N���[�����J�n����(�ł��G�N�X�v���[�����Ďg���ĂȂ�)
set browsedir=buffer
" �������݂̂Ō��������Ƃ��ɑ啶���������𖳎�����
set smartcase
" �������ʂ��n�C���C�g�\������
set hlsearch
" �Â��w�i�F�ɍ��킹���z�F�ɂ���
set background=dark
" �^�u���͂𕡐��̋󔒓��͂ɒu��������
set expandtab
" �������[�h�̍ŏ��̕�������͂������_�Ō������J�n����
set incsearch
" �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��ł��ʂ̃t�@�C�����J����悤�ɂ���
set hidden
" �s��������\������
set list
" �^�u�ƍs�̑�������������
set listchars=tab:>\ ,extends:<
" �s�ԍ���\������
set number
" �Ή����銇�ʂ�u���[�X��\������
set showmatch
" ���s���ɑO�̍s�̃C���f���g���p������
set autoindent
" ���s���ɓ��͂��ꂽ�s�̖����ɍ��킹�Ď��̍s�̃C���f���g�𑝌�����
set smartindent
" �^�u�����̕\����
set tabstop=2
" Vim���}������C���f���g�̕�
set shiftwidth=2
" �s���̗]������ Tab ��ł����ނƁA'shiftwidth' �̐������C���f���g����
set smarttab
" �J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���
set whichwrap=b,s,h,l,<,>,[,]
" �\�����ɕ����F��ω�������
syntax on
" �J���[�X�L�[�}�̎w��
colorscheme desert
" �s�ԍ��̐F
highlight LineNr ctermfg=darkyellow
" ���݂̍s�������\��
set cursorline
" ���݂̍s�������\���i�c�j
set cursorcolumn
" �r�[�v��������
set visualbell
" �R�}���h���C���̕⊮
set wildmode=list:longest
"�E�B���h�E�T�C�Y�ύX
set columns=110
set lines=35
""""""""""""""""""""""""""""""
" http://inari.hatenablog.com/entry/2014/05/05/231307
""""""""""""""""""""""""""""""
" �S�p�X�y�[�X�̕\��
""""""""""""""""""""""""""""""
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '�@')
    augroup END
    call ZenkakuSpace()
endif
""""""""""""""""""""""""""""""
" esc�������̂ő�p����B
noremap <C-j> <esc>
noremap! <C-j> <esc>
" �܂�Ԃ����ɕ\���s�P�ʂł̈ړ��ł���悤�ɂ���
nnoremap j gj
nnoremap k gk
"�R�����Z�~�R��������ς�
noremap ; :
noremap : ;
" ime setting
if has('multi_byte_ime') || has('xim') || has('gui_macvim')
  " Insert mode: lmap off, IME ON
  set iminsert=2
  " Serch mode: lmap off, IME ON
  set imsearch=2
  " Normal mode: IME off
  inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif
