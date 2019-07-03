scriptencoding utf-8

function! HelloAnytimeAnother()
	for n in range(a:firstline, a:lastline)
		echo "hello anytime! call time .. " . getline(n) . " ."
	endfor
endfunction

" :%call g:HelloAnytimeAnother()
" hello anytime! call time .. function! HelloAnytimeAnother() .
" hello anytime! call time ..     for n in range(a:firstline, a:lastline) .
" hello anytime! call time ..             echo "hello anytime! call time .. " . getline(n) . " ." .
" hello anytime! call time ..     endfor .
" hello anytime! call time .. endfunction .
" hello anytime! call time .. function! HelloAnytimeAnother() .
" hello anytime! call time ..     for n in range(a:firstline, a:lastline) .
" hello anytime! call time ..             echo "hello anytime! call time .. " . getline(n) . " ." .
" hello anytime! call time ..     endfor .
" hello anytime! call time .. endfunction .
" hello anytime! call time .. function! HelloAnytimeAnother() .
" hello anytime! call time ..     for n in range(a:firstline, a:lastline) .
" hello anytime! call time ..             echo "hello anytime! call time .. " . getline(n) . " ." .
" hello anytime! call time ..     endfor .
" hello anytime! call time .. endfunction .
" hello anytime! call time .. function! HelloAnytimeAnother() .
" hello anytime! call time ..     for n in range(a:firstline, a:lastline) .
" hello anytime! call time ..             echo "hello anytime! call time .. " . getline(n) . " ." .
" hello anytime! call time ..     endfor .
" hello anytime! call time .. endfunction .
" hello anytime! call time .. function! HelloAnytimeAnother() .
" hello anytime! call time ..     for n in range(a:firstline, a:lastline) .
" hello anytime! call time ..             echo "hello anytime! call time .. " . getline(n) . " ." .
" hello anytime! call time ..     endfor .
" hello anytime! call time .. endfunction .
