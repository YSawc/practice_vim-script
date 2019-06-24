function! s:_path_join(file) abort
	return g:session_path_test . '/' . a:file
endfunction

function! test_sessions#save(file) abort
	execute 'silent mksession!' s:_path_join(a:file)
	echo "saved" a:file
endfunction
