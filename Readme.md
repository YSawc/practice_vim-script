# [Vim scripts短期集中講座](https://mattn.kaoriya.net/software/vim/20111202085236.htm)や既存のプラグインのgithubを参考に、vimscriptの基本文法を学習し、最小のvimpluginを作る土台を積み上げる学習記録
既存のプラグインを読めるようになること、プラグインの自作に向けた基礎を身に付けたい

source ファイル名を実行することでfunctionの定義が読み込まれる
同じ原理で設定をvimの基本一定を書き込んだvimrcをsourceすることで設定を読み込んでいたことが再度理解できた

- stack_error.vim
	- vimだと、エラー発生時でも処理は継続する
	- 例外処理は存在する
	- エラー多量に吐いてたらこの処理を追記すればエラー(メッセージ)回避はできそう

- abort
 - エラー発生時に、同一ファンクションから抜けるオプション(?)
- range識別
	- vim独特のもの。この指定で[a:]なるプレフィックスでアクセスが可能になり、変数参照が[a:firstline],[a:lastline]で参照できるようになる

- range_scope.vim
	- g:function
		- 同一バッファ内の実行される行数に応じてfunctionが呼び出される
			- 具体的には、バッファでの実行行数が五行なら五回functionが呼び出される

- range_scope_another.vim
	- for n in部分でバッファ内の各行数番号が表示されるのかと思っていたが違った
		- 実際にはバッファ内のfunctionを呼び出した行が丸々表示される

- implicit_consent.vim
	- functionにdict参照を用いることで呼び出し関数の処理を変換できる
		- 言い換えると関数の呼び出しが拡張できる

- function_arg.vim
	- 関数の引数にはスコープを利用する。
		- スコープの種類は多くない。

- exists_value.vim
	- 変数に対するexistsは存在性のチェックで、未定義であれば偽となる
		- 定義済なら0であっても真となる

- created_dir.vim
	- ディレクトリが存在しない場合、mkdir第二引数に"p"を指定しない場合エラーが出力される

- call_from_autoload#hello
	- ディレクトリが自動読込されるパスではないため、sourceする必要がある
		- ~/.vim配下にある場合はvim起動時に読み込まれる

- command_execute.vim
	- コマンド化した関数は関数名で呼ぶことができる

- sessions.vim
	- expand .. ワイルドカードの昨日を持つ関数
	- ディレクトリの初期化の場合、グローバルで指定しないと呼び出すことができないのでディレクトリ定義時のスコープではgを使いそう
	- -nargsにより、引数を指定する
		- デフォルト値は0.
	- 多重起動しないようにloaded_test_session

- buffer_and_window.vim
	- 現在のバッファのポップアップ表示と、grepによるlistのインデックスを揃えるというのが鍵になりそう [Done]
	- バッファを配列に分割して、最初にマッチした数値をハッシュのvalueにすれば良さそう
		- https://thinca.hatenablog.com/entry/20100201/1265009821
		- https://kasei-san.hatenadiary.org/entry/20130709/p1
