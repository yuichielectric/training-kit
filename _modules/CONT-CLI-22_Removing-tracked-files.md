---
layout: module
leadingpath: ../
title: Trackedファイルの削除
pre-requisites: CONT-CLI-21_Handling-merge-conflicts
learning-objective: トラッキングしているファイルの削除の方法を学びましょう。
screens:
  - video-slide:
      title: Trackedファイルの削除
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `ls -lr`"
          say: "既にトラック済みのファイルを削除したい時があります。ただファイルを削除して、ステージングしてコミットする方法もありますが、もっと簡単なショートカットを使ってみましょう。"
        - do: "Type `git rm conflict.md`"
          say: "git rmコマンドを使うと、ファイルを削除できます。"
        - do: "Type `git status`"
          say: "git statusとタイプすると、既に削除したファイルがステージング済みでコミットを待っていることがわかります。"
        - do: "Type `git commit -m\"remove conflict file\"`"
          say: "あとはコミットするだけです。"
      production-notes:
  - lab:
      title: Removing Tracked Files
      id: CONT-CLI-22-lab-01
      presenter-script:
        - Use the steps you just learned to remove a tracked file.
      steps:
        - description: "Remove the tracked file `onefile.md`"
          id: CONT-CLI-23-remove
additional-labs:
additional-questions:
resources:

---
