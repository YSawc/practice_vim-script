" TODO: 出力結果に対してgrepを掛けて行の始めの数字を配列インデックスとする
" :echo getline('.')

" ::echo matchstr('12 foobarbaz', '[0-9]*')

function! _set_list_before() abort
		let l:list = split(execute('ls'), '\n')
		let l:num_list = []
		let l:buffer_dict = {}

		for i in range(len(list))
				" buffer_dict[printf("%d", i)]
				echo list[i]
				" echo matchstr(list[i], '^\s*[0-9]*')
				echo add(num_list, matchstr(list[i], '\d\+'))
		endfor
endfunction

function! s:_set_buffer_list() abort
	for i in range(1,)
endfunction

function! buffer_and_window#list() abort
		call popup_menu(l:list, {
				\ 'borderchars': [' ',' ',' ',' ','*','*','*','*'],
				\ })
endfunction
