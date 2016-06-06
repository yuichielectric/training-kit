---
layout: module
leadingpath: ../
title: コマンドラインからリポジトリを作る
pre-requisites: CONT-CLI-13_Viewing-project-history
learning-objective: コマンドラインからリポジトリを作ろう
screens:
  - video-slide:
      title: コマンドラインからリポジトリを作る
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `cd`"
          say: "GitHubでリポジトリを作るやりかたと、ローカルPCへのCloneの仕方については既に学びました。ですが、場合によってはローカルでプロジェクトを始めて、その後にリモートにPushしたいというケースも有ります。これを実現するには、ローカルにリポジトリを作る方法を知る必要があります。どこか作業してもいいディレクトリに移動して、新規にディレクトリを作成しましょう。"
        - do: "Type `git init scratch`"
          say: "既に存在しているプロジェクトの中に入ってリポジトリを初期化することもできれば、全く新規に作ることもできます。ここではscratchプロジェクトを新規に作ってみましょう。このプロジェクト内で、これから変更履歴の作り方や、履歴の書き換え方法などを学びます。git initの後にディレクトリ名をタイプしてください。Gitが新しくscratchというディレクトリを作ってそのディレクトリの中をGitリポジトリとして初期化してくれます。"
        - do: "Type `cd scratch`"
          say: "Git initのメッセージを確認したら、scratchフォルダに移動してください。"
        - do: "Type `ls -la`"
          say: "何が起きるか見てみましょう。git initとタイプすると、gitは.gitと呼ばれるファイルを作ります。この中にGitの内部ファイルがすべて入っています。"
        - do: "Type `echo \"This is my scratch project\" > README.md`"
          say: "この時点ではリポジトリには何もありません。ですのでREADMEファイルを作りましょう。"
        - do: "Type `git add README.md` and `git commit -m\"add README.md\"`"
          say: "そしてファイルをステージングしてコミットしましょう。"
      production-notes:
  - lab:
      title: Creating a Repository on the Command Line
      id: CONT-CLI-14-lab-01
      presenter-script:
        - <iframe width="560" height="315" src="https://www.youtube.com/embed/WxMFZncm12s" frameborder="0" allowfullscreen></iframe>
      steps:
        - description: Initialize a new git repository.
          id: CONT-CLI-14-init
        - description: Create a README.md file and commit it to the repository.
          id: CONT-CLI-14-commit
        - description: Create a branch in your new repository.
          id: CONT-CLI-14-branch
additional-labs:
additional-questions:
resources:
  - title: "Video: GitHub & Git Foundations - Init"
    url: https://youtu.be/WxMFZncm12s

---
