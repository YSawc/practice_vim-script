function! Foo()
  asdfasdf
  echo "foo"
endfunction

function! Bar()
  call Foo()
  echo "bar"
endfunction

call Bar()

" function Bar[1]..Foo の処理中にエラーが検出されました:
" 行    1:
" E492: エディタのコマンドではありません:   asdfasdf
" foo
" bar
