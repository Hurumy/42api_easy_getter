# 42api_easy_getter
just run the shellscripts


つかいかた

実行します　UIDとシークレットはIntraのAPI画面から持ってくる
~~~ sh gettoken.sh UID SECRET ~~~

実行します
~~~sh watchbh.sh イントラ名~~~

できます
~~~/bhlog/イントラ名/イントラ名_タイムスタンプ.json~~~

雑なので間違うと変なファイルがたくさんできます


***改造用の説明

getuserinfo.sh : APIを叩いて、コンマを改行に変えて、/userinfo/イントラ名の中に出しています(改行の方が人間の目に優しいため)
				中身のリンクやら置き換え文字列やらをいじると色々使えるかもしれません

get_bh_info.sh : getuserinfo.shでできたファイルのパスを引数にとって、これから欲しい行だけ検索し、/bhlog/イントラ名/の中に出しています
				検索文字列と書き出し先パスを変えたら色々別の用途にも使えるんじゃないですかね

watchbh.sh : 二つを一緒に実行します

gettoken.sh : トークンの期限はすぐに切れるのでこいつを叩くと/tokeninfoの中のトークンの情報が更新されます
			上のシェルスクリプトたちはこのtokeninfoの中身をみているのでこれを最初に実行しないとただ失敗します



