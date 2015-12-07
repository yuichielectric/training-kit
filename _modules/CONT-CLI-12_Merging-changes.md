---
layout: module
leadingpath: ../
title: ローカルの変更をマージする
pre-requisites: CONT-CLI-11_Viewing-local-diffs
learning-objective: コマンドラインを使ってマージをしてみましょう
screens:
  - image-slide:
      title: マージをすると何が起きるのでしょうか？
      image: merge-visual.jpg # Include an image that shows a branch with some commits - then a merge - then show the master branch with those same commits.
      presenter-script:
        - "マージは、2つ以上のブランチの履歴を1つにします。"
        - "既にマージのやり方については、GitHub上でPull Requestを作る章の中で学びました。ここでは、ローカルでマージする方法について学びましょう。"
  - video-slide:
      title: ローカルの変更をマージしよう
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `git branch`"
          say: "マージする前に、正しいブランチをチェックアウトしているか確認する必要があります。マージする際には、変更を取り込む側のブランチをチェックアウトしておく必要があります。"
        - do: "Type `git checkout master`"
          say: "この例では、フィーチャーブランチの変更をmasterにマージしたいと思います。ですのでmasterをチェックアウトします。"
        - do: "Type `git merge <branch-name>`"
          say: "シンプルにgit mergeと打ち込み、その後にマージしたいブランチ名を入れればよいのです。"
        - do: "Type `git push`"
          say: "git pushして変更をリモートに送信します。"
        - do: "Show the Merged PR on GitHub"
          say: "たとえローカルでマージをしたとしても、GitHubに変更がPushされれば、GitHubはそれを検知し、Pull Requestがマージされたとして処理します。"
        - do: "Click `Delete Branch`"
          say: "ブランチがmasterにマージされたら、そのブランチは削除して問題ありません。Pull Request上に便利なボタンが現れますので、それを押して削除してください。"
        - do: "Open the CLI"
          say: "でもローカルのブランチを消したい場合には、コマンドラインを使う必要があります。"
        - do: "Type `git branch -d <branch-name>`"
          say: "git branchのあとに -d オプションを追加すれば、ローカルのブランチを消すことができます。"
      production-notes:
  - lab:
      title: ローカルの変更をマージしよう
      id: CONT-CLI-12-lab-01
      presenter-script:
        - ローカルの変更をコマンドラインを使ってマージする練習をしよう
      steps:
        - description: ローカルブランチをmasterにマージしよう
          id: CONT-CLI-12-merge
        - description: 変更をリモートにPushしよう
          id: CONT-CLI-12-push
        - description: ローカルブランチを削除しよう
          id: CONT-CLI-12-delete
additional-labs:
additional-questions:
resources:

---
