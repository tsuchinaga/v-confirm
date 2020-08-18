# v confirm

V言語(VLang)の確認

## 確認内容

### インターフェースのダックタイピング
[interface](./interface)

```
$ v version
V 0.1.29 12d6620
```

repositoryでinterfaceを定義して、infraでダックタイピング。  
mainでinfraのClockをnewして、repositoryで定義したnow()と定義されていないnow2()を呼べるかの確認

now()だけを呼んだパターン
```
$ v run main.v
  2020-08-14 20:14:22
```

now2()を呼んだパターン
```
$ v run main.v
main.v:8:12: error: unknown method: `repository.Clock.now2`. Did you mean `now` ?
    6 |     c := infra.new_clock()
    7 |     println(c.now())
    8 |     println(c.now2())
      |               ~~~~~~
    9 | }
```

ちなみに、interfaceで定義したメソッドは`pub`キーワードがついてなくてもパッケージ外から見れる。

### UIライブラリを試してみる
[ui](./ui)

```
$ v version
V 0.1.29 b5b53a5
```

uiライブラリを使って簡単な機能を実装してみた。

補完がないからまだ使いやすさはピンとこないけど、HTMLでいうエレメントとスタイルを全部オブジェクトに放り込んでいくスタイルはあまりスケールしないんじゃないかなーという印象。
とはいえ、全てVで書けて補完されてコンパイルでエラーチェックできるのはやっぱり強い。

現時点でIME対応はなし。Golangのライブラリとかでもみたけど、テキストエリアを自前で用意しているから、OSがテキストボックスにフォーカスが当たっていることを認識できていない。
なので日本語入力すると、左上とかに入力中の文字列が表れて、確定時にテキストボックスに反映されるという動きになる。

V標準がこれなら、Vでデスクトップツール製品を作るのは無理っぽいなー
