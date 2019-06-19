# [Vim scripts短期集中講座](https://mattn.kaoriya.net/software/vim/20111202085236.htm)を参考に、vimscriptの基本文法を学習し、最小のvimpluginを作る土台を積み上げる学習記録

source ファイル名を実行することでfunctionの定義が読み込まれる
同じ原理で設定をvimの基本一定を書き込んだvimrcをsourceすることで設定を読み込んでいたことが再度理解できた

- stack_error.vim
 - vimだと、エラー発生時でも処理は継続する
 - 例外処理は存在する
	- エラー多量に吐いてたらこの処理を追記すればエラー(メッセージ)回避はできそう

- abort
 - エラー発生時に、同一ファンクションから抜けるオプション(?)
