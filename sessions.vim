" セッション機能 (https://qiita.com/gorilla0513/items/838138004f86b66d5668)

" 多重起動をしないようにする
if exists('g:loaded_test_session')
    finish
endif
let g:loaded_test_session = 1

if !exists('g:session_path_test')
	let g:session_path_test = expand('./test_sessions')
endif

if !isdirectory(g:session_path_test)
    call mkdir(g:session_path_test, "p")
endif

" commands
command! -nargs=1 SaveSession call test_sessions#save(<f-args>)
