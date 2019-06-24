" セッション機能 (https://qiita.com/gorilla0513/items/838138004f86b66d5668)

if !exists('g:session_path_test')
	let g:session_path_test = expand('./test_sessions')
endif

" ./test_sessions

command! -nargs=1 SaveSession call test_sessions#save(<f-args>)
