let s:foo = {"name": "Kento"}

function! s:foo.bar()
	echo "my name is " . self.name
endfunction

call s:foo.bar()

"my name is Kento"
