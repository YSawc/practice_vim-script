" TODO: 出力結果に対してgrepを掛けて行の始めの数字を配列インデックスとする

function! buffer_and_window#list() abort
	let l:list = split(execute('ls'), '\n')
	call popup_menu(l:list, {
		\ 'borderchars': [' ',' ',' ',' ','*','*','*','*'],
		\ })
endfunction
