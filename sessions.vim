" セッション機能 (https://qiita.com/gorilla0513/items/838138004f86b66d5668)

let s:session_path = expand('./test_sessions')

if isdirectory(s:session_path)
	echo "hello"
endif

" 存在しないディレクトリ
let s:not_exist_session_path = expand('./test_not_exist_sessions')

if isdirectory(s:not_exist_session_path)
	echo "can't call me"
endif

" hello
