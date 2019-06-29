function! select_color_scheme#list() abort
	let l:list = split(execute('ls'), '\n')
	call popup_menu(l:list, {
		\ 'borderchars': [' ',' ',' ',' ','*','*','*','*'],
		\ "title": " color_list",
		\ })
endfunction
