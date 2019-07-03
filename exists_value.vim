scriptencoding utf-8

" existsは存在性のチェックであり、変数の値が０でもtrueを返す
" https://vim-jp.org/vimdoc-ja/usr_41.html#41.2
let s:loaded_not_exist_plugin = 0
if !exists('s:loaded_not_exist_plugin')
	echo "hello from global not exists"
endif

"
