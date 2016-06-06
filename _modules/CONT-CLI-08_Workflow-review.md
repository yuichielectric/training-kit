---
layout: module
leadingpath: ../
title: ワークフローレビュー
pre-requisites: CONT-CLI-07_Creating-local-branches
learning-objective: コマンドラインを使ってGitHub Flowを復習してみましょう
screens:
  - video-slide:
      title: ワークフローレビュー
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Show https://guides.github.com/introduction/flow/"
          say: "GitHub Flowにおいてブランチ作成がすべての基本であることを思い出してください。ブランチを作ったところで、ワークフローの残りの部分を復習してみましょう。最初にしたように詳細には説明しませんので、各自で見なおしてください。今回は次のようなファイルを作ってみましょう。他の参加者にあなたの街を訪れた時に見たほうが/やったほうがいいもののリストです。このファイルを作る中で、いくつかの便利なショートカットを紹介します。"
        - do: "Type `echo \"Welcome to My Home Town\" > home-town.md`"
          say: "echoコマンドを使ってファイルを作りましょう。ファイル名を決める際は、皆さんの街の名前をローマ字で書いた後、.md を拡張子として追加してください。"
        - do: "Type `git status`"
          say: "git statusとタイプすると、新たなuntrackedなファイルがあることを確認できます。"
        - do: "Type `git add .`"
          say: "このファイルを次のコミットに追加したいので、このファイルをステージングエリアに追加しましょう。Git add . というのはGitに実行ディレクトリにあるすべての新規ファイルとmodifiedファイルをステージングエリアに追加してくれとお願いする際のショートカットです。"
        - do: "Type `git commit -m\"commit message\"`"
          say: "さあファイルをコミットしましょう。今回は、コミットメッセージを入力するたびにテキストエディタを開く代わりの方法をお伝えします。-m オプションを使うことで、コミットコマンドと同時に引用符の中にメッセージを入力することができます。"
        - do: "Type `git push -u origin <branch-name>`"
          say: "次に変更をリモートにプッシュしましょう。-u オプションを追加することで、リモートトラッキングブランチ(upstreamともいいます)を設定することができます。"
        - do: "Open GitHub"
          say: "次にGitHubに戻って、Pull Requestを作りましょう。"
        - do: "Click `Compare & Pull Request`"
          say: "GitHubは新しくPushされたブランチを検知して、Pull Requestを作るかどうか聞いてきます。緑のボタンを押して作成を始めましょう。"
        - do: "Type a pull request `Title` and `Description`"
          say: "内容が分かるようなTitleとDescriptionを書きましょう。"
        - do: "Click `Create Pull Request`"
          say: "そうして Pull Request を作りましょう。"
        - do: "Click `Merge Pull Request`"
          say: "議論が終わり、マージの準備が整ったら Pull Request をmasterにマージしてプロセスを終了しましょう。"
        - do: "Click `Delete branch`"
          say: "マージできたら、もうブランチを削除しても安全です。"
      production-notes:
  - lab:
      title: ワークフローレビュー
      id: CONT-CLI-08-lab-01
      presenter-script:
        - さらにいろいろ試してみましょう。
      steps:
        - description: "ブランチ上で新しいファイルを作ってみましょう。"
          id: CONT-CLI-08-create-file
        - description: "ファイルをステージングして、ローカルでコミットしてみましょう。"
          id: CONT-CLI-08-commit
        - description: "ファイルをリモートにPushしてみましょう"
          id: CONT-CLI-08-push
        - description: "Pull Requestを作ってみましょう。"
          id: CONT-CLI-08-pull-request
        - description: "Masterに変更をマージしましょう。"
          id: CONT-CLI-08-merge
additional-labs:
additional-questions:
resources:

---
