" 例えば、help を開いているウィンドウをフォーカスを動かさずに閉じるとかできるようになります。
" 引用元 [Vim のバッファとウィンドウを理解する](http://cohama.hateblo.jp/entry/2013/09/28/220808)

function! close_help#CloseHelpWin() abort
  for w in range(1, winnr('$'))
    let bt = getwinvar(w, '&buftype')
    if bt ==# 'help'
      execute w . 'wincmd w'
      q
      " break
    endif
  endfor
endfunction
