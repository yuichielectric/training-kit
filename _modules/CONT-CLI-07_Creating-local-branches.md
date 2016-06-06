---
layout: module
leadingpath: ../
title: ローカルでブランチを作る
pre-requisites: CONT-CLI-06_Creating-repository-github
learning-objective: コマンドラインを使って、ローカルにブランチを作ってみよう
screens:
  - video-slide:
      title: ローカルでブランチを作る
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "ターミナルを開く"
          say: "これからローカルブランチを作ります。"
        - do: "Type `git branch`"
          say: "先ほどリポジトリを作ってローカルPCにクローンしました。git branchとタイプするとmasterブランチだけが見え、既にチェックアウトされていると思います。ブランチを作ると、自動的に今いるブランチを元にして新しいブランチが作られます。開発が進んでいくとたくさんのブランチができていきますから、ブランチを作る前には自分がmasterブランチにいるかどうかをまず確認したほうが良いでしょう。"
        - do: "Type `git branch <branch-name>`"
          say: "さあ、git branchとタイプし、続けて作成したいブランチの名前を入れましょう。ブランチ名はスペースを含むことはできないので、かわりにハイフンを使うといいでしょう。"
        - do: "Type `git branch`"
          say: "またgit branchと入力すると、今度は新しいブランチも見えるはずです。でもまだmasterをチェックアウトしています。"
        - do: "Type `git checkout <branch-name>`"
          say: "git checkoutとタイプし、続けてチェックアウトしたいブランチ名を入れましょう。"
      production-notes:
  - lab:
      title: ローカルブランチを作る
      id: CONT-CLI-07-lab-01
      presenter-script:
        - さあローカルブランチを作ろう！
      steps:
        - description: "次のようにユーザーネームを含んだブランチ名を作ってみよう: `githubusername-branch`."
          id: CONT-CLI-07-branch
additional-labs:
additional-questions:
resources:

---
