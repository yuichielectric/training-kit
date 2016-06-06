---
layout: module
leadingpath: ../
title: ファイル名の変更と移動
pre-requisites: CONT-CLI-14_Creating-repository-local
learning-objective: ファイル名の変更と移動をGitコマンドで扱う方法を学びましょう。
screens:
  - video-slide:
      title: ファイル名の変更と移動
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `touch moveme.md`"
          say: "あとで捨ててもいいファイルを2つ作りましょう。最初のファイルをmoveme.mdとします。"
        - do: "Type `touch badname.md`"
          say: "もう一つのファイルをbadname.mdとします。"
        - do: "Type `git add .`"
          say: "両方のファイルをステージングするためのショートカットを使いましょう。ファイル名の代わりに . を使えば、ワーキングツリーに存在するすべてのuntrackedとmodifiedファイルをいっぺんにステージングエリアに追加できるのでした。実はこのコマンドは便利ですが、場合によっては危険なこともあるのです。"
        - do: "Type `git status`"
          say: "ステージングエリアはこれから作ろうとするコミットが自分の意図する形になっているかを確認するために使います。"
        - do: "Type `git commit -m\"Create throw away files\"`"
          say: "ブランチを既に作成していますから（していなかったら作ってください）、これらのファイルをコミットしてしまいましょう。"
        - do: "Type `mkdir places`"
          say: "さてここでたとえば、あることに気づいてmoveme.mdをplacesフォルダの中に移動したいとします。まずはフォルダを作りましょう。"
        - do: "Type `git mv moveme.md places/moveme.md`"
          say: "ファイルの移動にgit mvコマンドを使います。このコマンドは2つの引数を取ります。現在のパスと新しいパスです。"
        - do: "Type `git status`"
          say: "git statusすると、Gitがファイルを移動してステージングエリアに追加してくれたことがわかります。"
        - do: "Type `git commit -m\"move moveme to places folder\"`"
          say: "あとはコミットをすればよいです。"
        - do: "Type `git mv badname.md goodname.md`"
          say: "全く同じコマンドを使って、ファイル名の変更もできます。試してみましょう。"
        - do: "Type `git status`"
          say: "もう一度git statusコマンドを実行してみると、Gitは名前が変更されたファイルをステージングしてくれているのがわかります。あとはコミットするだけです。"
      production-notes:
  - lab:
      title: Renaming Files
      id: CONT-CLI-15-lab-01
      presenter-script:
        - <iframe width="560" height="315" src="https://www.youtube.com/embed/ipdgyfPq8FE" frameborder="0" allowfullscreen></iframe>
      steps:
        - description: Rename the badname.md file to goodname.md.
          id: CONT-CLI-15-rename
        - description: When you are finished, commit your file changes.
          id: CONT-CLI-15-commit
additional-labs:
additional-questions:
resources:
  - title: "Video: GitHub & Git Foundations - Move"
    url: https://youtu.be/ipdgyfPq8FE

---
