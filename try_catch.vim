scriptencoding utf-8

function! Foo()
	try
  	asdfasdf
  	echo "foo"
	catch
	endtry
endfunction

function! Bar()
  call Foo()
  echo "bar"
endfunction

call Bar()

" bar
