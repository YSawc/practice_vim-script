scriptencoding utf-8

" TODO: 出力結果に対してgrepを掛けて行の始めの数字を配列インデックスとする
" :echo getline('.')

" ::echo matchstr('12 foobarbaz', '[0-9]*')

function! s:_set_list_before() abort
	let s:buffer_list = split(execute('ls'), '\n')
	let s:buffer_num_list = []
	let s:buffer_dict = {}

	for i in range(len(s:buffer_list))
		" echo s:buffer_list[i]
		echo add(s:buffer_num_list, matchstr(s:buffer_list[i], '\d\+'))
		" echo s:buffer_dict[buffer_num_list[i]]
		let s:buffer_dict[s:buffer_num_list[i]] = s:buffer_list[i]
	endfor
endfunction

function! s:_set_buffer_list() abort
	for i in range(1,)
endfunction

function! buffer_and_window#list() abort
	execute s:_set_list_before()

	call popup_menu(s:buffer_list, {
			\ 'borderchars': [' ',' ',' ',' ','*','*','*','*'],
			\ })
endfunction
