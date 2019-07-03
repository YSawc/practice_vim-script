scriptencoding utf-8

function! s:call_arg(str)
		echo "call_arg:".a:str
endfunction

function! s:double_arg(str1, str2)
		echo "double_arg:".a:str1.a:str2
endfunction

let F = function('s:Call_arg')
call F("hello_world")

let F = function('s:double_arg')
call F("hello", "double_world")

" c:hello_world
" double_arg:hellodouble_world
