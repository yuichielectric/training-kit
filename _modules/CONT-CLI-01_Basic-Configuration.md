---
layout: module
leadingpath: ../
title: Command Line Interface (CLI) コンフィグの基礎
pre-requisites: CONT-05_Merging-pull-requests
learning-objective: Gitを効率的に使うためにCLIのコンフィグをしましょう
screens:
  - image-slide:
      title: Gitのコンフィグレベル
      image: config-levels.jpg
      presenter-script:
        - Gitをコマンドラインで使う場合、最初にすべきなのはコンフィグです。
        - Gitには3つのコンフィグレベルがあります。
        - --system - システムワイドな設定です。コンピュータ上の全ユーザーに適用されます。
        - --global - ユーザー毎の設定です。自分のアカウントのみに適用されます。
        - --local - リポジトリ毎の設定です。 これは設定したリポジトリにのみ適用されます。
        - デフォルトは--localです。
        - あとでまた設定できます; いまは基本的な設定だけを行います。
  - image-slide:
      title: Gitのバージョンチェック
      image: git-version.jpg
      presenter-script:
        - "Gitはクロスプラットフォームです; コマンド体系はMac, Windows, Linux問わず基本的に同じです。Gitが正しくインストール、設定されているか確認しましょう"
        - "まずバージョンを確認しましょう。1.9.5以上であれば問題ありません。"
  - image-slide:
      title: コンフィグのプレビュー
      image: config-list.jpg
      presenter-script:
        - "コンフィグに自動追加された設定を見たいのであれば、`git config --list`と打ってみましょう。設定内容が一覧できます。"
  - image-slide:
      title:  User NameとEmailの設定
      image: config-username-email.jpg
      presenter-script:
        - User NameとEmailを設定しましょう。Gitはこのふたつを使ってあなたが作った各コミットにfingerprintをつけていきます。`git config --global user.name "user name"` と打ち、 `git config --global user.email "user email"`と打ってください。
  - image-slide:
      title: デフォルトのエディタを設定する
      image: config-editor.jpg
      presenter-script:
        - 次にデフォルトのエディタを設定しましょう。コミットメッセージや衝突のマージ作業をするときなどに使われます。`git config --global core.editor \"atom --wait\"` と打つとGitはエディタとしてAtomを使うようになります。他のエディタが使いたい場合、次のリンク先を参考にしてください。 https://help.github.com/articles/associating-text-editors-with-git/
  - image-slide:
      title: Autocrlfの設定（改行コード）
      image: config-autocrlf.jpg
      presenter-script:
        - "`autocrlf` というのは自動CRLFということです。システムによって改行コードの扱いは違います。もしこの設定のない状態で、他の改行コードの扱いが違うシステムで作られたファイルを開くとGitは、あなたのシステムが自動で変更した改行コードについて、差分だと認識してしまいます。 `git config --global core.autocrlf`と打ちましょう。もしあなたが使っているのがWindowsであれば`true`と設定してください。もしLinuxかMacであれば`input`です。"
  - image-slide:
      title: デフォルトのPushの挙動を設定
      image: config-push-default.jpg
      presenter-script:
        - "最後に紹介する設定はPushのデフォルト設定です。ローカルマシンの変更をリモートサーバにPushするとき、ローカルにある全てのブランチを送るようにするか、いまチェックアウトしているブランチだけを送るかを選択できます。これを設定するにはpush.defaultという設定を使います。もしすべてのブランチを自動的に送信したい場合は`matching`に設定できます。 または、作業中のブランチだけにしたい場合は`simple`とすることもできます。今は、`git config --global push.default simple`としておきましょう。"
  - image-slide:
      title: 設定を確認
      image: config-list.jpg
      presenter-script:
        - "様々な設定を施しました。設定がどうなったか見てみましょう。`git config --list`と打ってください。もし同じ設定を複数回していた場合、重複していることに気づくと思います。もし重複していた場合は、下にある設定値が優先されます。"
additional-labs:
additional-questions:
resources:

---
