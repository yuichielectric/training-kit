---
layout: module
leadingpath: ../
title: エイリアスを作ろう
pre-requisites: CONT-CLI-22_Removing-tracked-files
learning-objective: よく使うGitコマンドのショートカットを作ってみよう
screens:
  - video-slide:
      title: コマンドのショートカットを作成しましょう
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `git log --oneline --graph --decorate --all`"
          say: "これまで、Gitの長いコマンドをいちいち入力するのが面倒だと思っていたかもしれません。安心してください。エイリアスを作ることで、ショートカットを作成する事ができます。"
        - do: "Type `git config --global alias.lol \"log --oneline --graph --decorate --all\"`"
          say: "例えば、logコマンドのエイリアスを作りたいとします。その場合は次のように入力します。git config --global と入力した後にエイリアスを入力し、その後に対象のコマンドを入力します。ここではlolという文字をエイリアスとして使います。その後に対象のコマンドを先頭のgitという文言を抜いて入力します。"
        - do: "Type `git lol`"
          say: "そうするとこんな風にlogコマンドのショートカットを使って綺麗なログを見ることができます。"
        - do: "Type `git config --global alias.co \"checkout -b\"`"
          say: "いろんなショートカットを作成できるので、試してみてください。"
      production-notes:
  - lab:
      title: エイリアスを作ろう
      id: CONT-CLI-23-lab-01
      presenter-script: 自分自身にとって便利になりそうなエイリアスを作ってみましょう
      steps:
        - description: アップストリームにPushするためのエイリアスを作ってみましょう
          id: CONT-CLI-23-alias-push
        - description: statusコマンドのエイリアスを作ってみましょう
          id: CONT-CLI-23-alias-status
additional-labs:
additional-questions:
resources:

---
