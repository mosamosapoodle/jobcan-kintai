## ■準備
### インストール

```
$ git clone git@github.com:mosamosapoodle/jobcan-kintai.git
```

### gem インストール

```
$ cd jobcan-kintai
$ bundle install --path vendor/bundle
```

 ※ jobcan-kintaiディレクトリ配下vendor/bundleディレクトリ内にインストールされる。

### 環境変数ファイル 作成・設定

```
$ vi .env
```

 ① キーボードの **i** を押し、 INSERTモード（書き込み可能モード）に変更。

 ② 以下枠内をコピペし、任意の文字列を設定。

```
CLIENT_ID="会社ID"
EMAIL="メールアドレスまたはスタッフコード"
PASS="パスワード"
```

 ③ キーボードの **esc** を押し、続けて **:wq** と入力し完了。

## ■アプリ 設定・実行

### 出勤時刻・退勤時刻の設定

以下、出勤時刻が10時半の場合。

```
# 出勤
timer(Time.parse("10:30")) do
```

### アプリの実行

前日にターミナルにて以下コマンドを実行し、放置。
指定時間に、出勤打刻・退勤打刻をしてくれる。

```
$ bundle exec ruby main.rb
```


<br>
以上。