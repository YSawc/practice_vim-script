scriptencoding utf-8

let s:foo = {"name": "Kento"}

function! s:foo.bar()
	echo "my name is " . self.name
endfunction

function! s:my_dict() dict
	echo "from my_dict"
endfunction

let s:foo["bar"] = function("s:my_dict")

call s:foo.bar()

" from my dict

" call s:foo.name

" from my_dict
" /Users/y-s/workspace/practice_vim_script/implicit_consent.vim の処理中にエラーが検出されました:
" 行   17:
" E718: 関数参照型が要求されます
