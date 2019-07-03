scriptencoding utf-8

if !exists('s:test_session_path')
	let s:test_session_path = expand('./test_sessions')
endif

if !isdirectory(s:test_session_path)
	call mkdir(s:test_session_path, "p")
endif

" test_sessionsディレクトリが作成される
