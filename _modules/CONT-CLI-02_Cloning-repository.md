---
layout: module
leadingpath: ../
title: リポジトリをクローンしよう
pre-requisites: CONT-CLI-01_Basic-configuration
learning-objective: ブランチを作ってMasterブランチとは別の作業環境を作って開発をしよう
screens:
  - image-slide:
      title: リポジトリをクローンしよう
      image: clone-diagram.jpg
      presenter-script:
        - 先ほど行ったことをもう一回やってみましょう。ただし今回は、ローカルのファイルとコマンドラインを使ってIssueでリクエストされた内容を開発してみます。
        - まず、リポジトリを作ってクローンしましょう。
        - GitHubのリポジトリをクローンするとき、元となるリポジトリの内容をそっくりそのまま、履歴も含めてコピーすることになります。これがGitのようなDVCS（分散バージョン管理システム）のメリットの1つです。中央サーバにコミット履歴を参照に行くのではなく、ローカルの履歴を直接見ることができるのでとてつもなく動作が速いのです。
  - video-slide:
      title: リポジトリをクローンしよう
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: 該当のリポジトリにアクセス
          say: リポジトリをクローンするには、まずCodeメニューにアクセスしてください。
        - do: Create `<githubID>-more-bio` branch
          say: ブランチを作りましょう。GitHub上でブランチを作り始めるのは慣れておくといい方法です。これによって他人にいまあなたが作業しているブランチの存在を教えるとともに、あとで衝突が起きる可能性を減らしてくれます。
        - do: Copy the `clone URL`
          say: "clone URLをクリップボードにコピーしてください"
        - do: Open the CLI
          say: ターミナルに戻りましょう。リポジトリをクローンしたいところまでcdで移動します。場所はどこでも構いません。
        - do: Type `git clone <URL>`
          say: git clone の後に先ほどコピーしたURLを貼り付けて実行してください。リポジトリのクローンが始まります。
        - do: Type `cd <dir>`
          say: クローンの結果できたディレクトリにcdで移動してください。
        - do: Type `git status`
          say: "`git status` はリポジトリとファイルの状態を調べるのによく使うコマンドです。いまは、masterブランチにいて、すべてがorigin/masterと同じ最新状態です。"
        - do: Type `git branch`
          say: git branch を実行すると、ブランチのリストを見ることができます。先ほどGitHub上で作ったブランチが見えないことに気づきましたか？
        - do: Type `git branch --all` or `git branch -a`
          say: もしすべてのブランチを見たいのであれば、--allか-aというオプションを追加してください。リモートサーバ上にあるブランチも見ることができます。
        - do: Type `git checkout <branch-name>`
          say: "GitHubで作ったブランチをチェックアウトするには、git checkoutの後にブランチ名を入れてください。`remotes/origin`をブランチ名の前につける必要はありません。メッセージを見ていただくと、origin上の同じ名前のリモートブランチをトラックするように設定されたと出ているはずです。"
  - lab:
      title: リポジトリをクローンしよう
      id: CONT-CLI-02-lab-01
      presenter-script:
        - リポジトリを自分のローカルマシンにクローンしましょう
      steps:
        - description: 新しいブランチをgithubID-more-bioという名前で作ります。自分のgithubIDを使ってください。
        - description: リポジトリをクローンします。
          id: CONT-CLI-02-clone
        - description: ブランチをチェックアウトします。
          id: CONT-CLI-02-checkout
additional-labs:
additional-questions:
resources:
  - title: Cloning a Repository
    url: https://help.github.com/articles/cloning-a-repository/

---
