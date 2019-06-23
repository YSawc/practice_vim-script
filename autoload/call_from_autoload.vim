" vim起動時に自動で読まれるのは~/.vimディレクトリ下のとき
" 以下のコマンドは自動読込されない
function! call_from_autoload#hello() abort
	echo "hello_from_autoload"
endfunction
