" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif

hi Define          guifg=#66D9EF


hi Boolean         guifg=#AE81FF
hi Number          guifg=#AE81FF
hi Constant        guifg=#AE81FF               gui=bold
hi Float           guifg=#AE81FF

hi Conditional     guifg=#F92672               gui=bold
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Keyword         guifg=#F92672               gui=bold
hi Statement       guifg=#F92672               gui=bold
hi Operator        guifg=#F92672
hi Repeat          guifg=#F92672               gui=bold
hi SpecialChar     guifg=#F92672               gui=bold

hi DiffDelete      guifg=#960050 guibg=#1E0010

hi String          guifg=#E6DB74
hi Label           guifg=#E6DB74               gui=none
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Error           guifg=#E6DB74 guibg=#1E0010

hi Character       guifg=#E6DB74

hi Cursor          guifg=#000000 guibg=#F8F8F0
hi iCursor         guifg=#000000 guibg=#F8F8F0

hi Identifier      guifg=#FD971F
hi StorageClass    guifg=#FD971F               gui=italic

hi Debug           guifg=#BCA3A3               gui=bold
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffText                      guibg=#4C4745 gui=italic,bold


hi Directory       guifg=#A6E22E               gui=bold
hi Exception       guifg=#A6E22E               gui=bold
hi Function        guifg=#A6E22E
hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi SignColumn      guifg=#A6E22E guibg=#232526

hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000
hi Ignore          guifg=#808080 guibg=bg

hi IncSearch       guifg=#C4BE89 guibg=#000000
hi Macro           guifg=#C4BE89               gui=italic

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold

" complete menu
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808

hi Question        guifg=#66D9EF
hi SpecialKey      guifg=#66D9EF               gui=italic
hi Structure       guifg=#66D9EF
hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Pmenu           guifg=#66D9EF guibg=#000000
hi WildMenu        guifg=#66D9EF guibg=#000000
hi PmenuThumb      guifg=#66D9EF

hi SpecialComment  guifg=#7E8E91               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic

if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif

hi StatusLine      guifg=#455354 guibg=fg
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Search          guifg=#000000 guibg=#FFE792

hi StatusLineNC    guifg=#808080 guibg=#080808
hi Underlined      guifg=#808080               gui=underline
hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold

hi TabLineFill     guifg=#1B1D1E guibg=#1B1D1E
hi TabLine         guibg=#1B1D1E guifg=#808080 gui=none

if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=#272822
   hi Comment         guifg=#75715E
   hi CursorLine                    guibg=#3E3D32
   hi CursorLineNr    guifg=#FD971F               gui=none
   hi CursorColumn                  guibg=#3E3D32
   hi ColorColumn                   guibg=#3B3A32
   hi LineNr          guifg=#BCBCBC guibg=#3B3A32
   hi NonText         guifg=#75715E
   hi SpecialKey      guifg=#75715E
end

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
