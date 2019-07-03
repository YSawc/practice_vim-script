scriptencoding utf-8

function! sessions#choice(sesson_list, id, idx) abort
	let session = a:sesson_list[a:idx-1]

	call popup_menu(["今日","明日"],{
		\ "callback": function("s:choise_session", [l:session]),
		\ 'borderchars': [' ',' ',' ',' ','*','*','*','*'],
		\ "title": "select settion",
	  \ })
endfunction
