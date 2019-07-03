scriptencoding utf-8

" セッション機能 (https://qiita.com/gorilla0513/items/838138004f86b66d5668)
" skanehira/vsession
" https://github.com/skanehira/vsession/blob/master/plugin/vsession.vim

" 存在しないディレクトリにはエラー出力
if !isdirectory(s:sessions_path)
	let s:sessions_path = expand('./test_sessions')
endif

" line    6:
" E121: Undefined variable: s:sessions_path
" E116: Invalid arguments for function isdirectory(s:sessions_path)
