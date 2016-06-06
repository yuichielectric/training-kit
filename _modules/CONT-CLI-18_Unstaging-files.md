---
layout: module
leadingpath: ../
title: ステージングされたファイルを取り消す
pre-requisites: CONT-CLI-17_Fixing-bad-commits
learning-objective: ステージングされたファイルを取り消す際に何ができるかを学びます。
screens:
  - video-slide:
      title: ステージングされたファイルを取り消す
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `echo \"This is my file to unstage.\" > unstageme.md`"
          say: "別のシナリオを設定してみましょう。まずunstageme.mdというファイルを作ってください。"
        - do: "Type `git add unstageme.md`"
          say: "次のコミットの準備としてステージングします。ところが、コミットを作っている途中で次のコミットに含めたくないファイルがステージングエリアに上がってしまっているケースがときおりあります。"
        - do: "Type `git reset HEAD unstageme.md`"
          say: "そういう場合にも、Gitは便利です。ステージングエリアからどうやってファイルを外せばいいか教えてくれます。書いてあるとおりにシンプルにgit reset HEADと打ち、ファイル名を入力すればよいのです。"
        - do: "Type `git status`"
          say: "これによってファイルをアンステージし、ワーキングディレクトリに戻すことができます。このファイルにさらに変更を追加して次のコミットのためにステージングし直すこともできます。"
      production-notes:
  - lab:
      title: ステージングされたファイルを取り消す
      id: CONT-CLI-18-lab-01
      presenter-script:
        - Now it is your turn to practice unstaging a file.
      steps:
        - description: Make changes to the file called threefile.md.
          id: CONT-CLI-18-edit
        - description: Add the file to the staging area.
          id: CONT-CLI-18-stage
        - description: Unstage the file.
          id: CONT-CLI-18-unstage
additional-labs:
additional-questions:
resources:

---
