---
layout: module
leadingpath: ../
title: マージコンフリクトを解決する
pre-requisites: CONT-CLI-20_Discarding-changes-modified-files
learning-objective: マージコンフリクトの扱い方を学びましょう。
screens:
  - lab:
      title: マージコンフリクトを作りましょう
      id: CONT-CLI-21-lab-01
      presenter-script:
        - "マージコンフリクトは、2つのブランチをマージしようとするときに、競合する情報が同時に同じ場所に書き込まれようとした時に発生します。さあ、マージコンフリクトが起きるようなシチュエーションを作ってみましょう。そしてどう直すかを学びましょう。"
      steps:
        - description: "`merge-me`というブランチを作ってチェックアウトします"
          id: CONT-CLI-21-01-branch
        - description: "そのブランチ上で`conflict.md`というファイルを作りましょう。何行かテキストを追加して、ステージングしてコミットしてください。"
          id: CONT-CLI-21-01-commit-branch
        - description: "`master`ブランチをチェックアウトします"
          id: CONT-CLI-21-01-checkout
        - description: "そのブランチ上で`conflict.md`というファイルを作りましょう。何行かテキストを追加して、ステージングしてコミットしてください。"
          id: CONT-CLI-21-01-commit-master
        - description: "merge-meブランチをmasterにマージしてみましょう。するとマージコンフリクトが発生します。"
          id: CONT-CLI-21-01-merge
  - video-slide:
      title: マージコンフリクトを解決する
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `git status`"
          say: "マージコンフリクトを発生させました。さあ、解決の仕方をテキストエディタを使って学びましょう。まずgit statusと打ち込んでunmerged pathsと呼ばれるセクションを探しましょう。これによって、どのファイルがコンフリクトを起こしているのかがわかります。"
        - do: "Type `atom conflict.md`"
          say: "テキストエディタでファイルを開いてください。"
        - do: "マージコンフリクトマーカーを確認する"
          say: "まず最初にHEADというマーカーとたくさんの<記号が見えると思います。次に=記号の列によって内容が2つに区切られている様子が見えます。区切られた内容の下側に、たくさんの>記号とmerge-meマーカーが見えると思います。これがコンフリクトを起こしている箇所です。=記号の上部は今チェックアウトしているブランチ（今回の場合masterブランチ）上で見つかった内容です。=記号の下部は今マージしようとしているブランチで見つかった内容になります。"
        - do: "テキストを削除して、コンフリクトを解消する"
          say: "どちらの内容を活かすかを決める必要があります。"
        - do: "コンフリクトマーカーを削除する"
          say: "その後、コンフリクトマーカーを消します。"
        - do: "Click `Save > Quit`"
          say: "ファイルを保存して、テキストエディタを閉じましょう。"
        - do: "Type `git status`"
          say: "もう一回git statusとタイプすると、まだマージの途中で、コミットできるファイルが存在していることがわかります。"
        - do: "Type `git add conflict.md`"
          say: "シンプルにコンフリクトを解消したファイルをステージングしましょう。"
        - do: "Type `git commit -m\"fix merge conflict\"`"
          say: "そしてコミットしてマージを完了させましょう。"
      production-notes:
  - lab:
      title: Handling a Merge Conflict
      id: CONT-CLI-21-lab-02
      presenter-script:
        - <iframe width="560" height="315" src="https://www.youtube.com/embed/yyLiplDQtf0" frameborder="0" allowfullscreen></iframe>
      steps:
        - description: "Clear your merge conflict."
          id: CONT-CLI-21-02-resolve
additional-labs:
additional-questions:
resources:
  - title: "Video: GitHub & Git Foundations - Merge"
    url: https://youtu.be/yyLiplDQtf0

---
