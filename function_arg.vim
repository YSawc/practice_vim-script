function! s:a(arg)
	echo "a:".a:arg
endfunction

function! s:b(arg1, arg2)
	echo "b:".b:arg1.b:arg2
endfunction

let Func_a = function('s:a')
call Func_a("hello_world")
let Func_b = function('s:b')
call Func_b("hello", "world")

" a:hello_world
" function <SNR>241_b の処理中にエラーが検出されました:
" 行    1:
" E121: 未定義の変数です: b:arg2
