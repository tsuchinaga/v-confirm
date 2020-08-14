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
