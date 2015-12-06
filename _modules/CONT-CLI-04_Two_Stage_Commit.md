---
layout: module
leadingpath: ../
title: 2ステージコミット
pre-requisites: CONT-CLI-03_Editing-local-files
learning-objective: コマンドライン上でAddとCommitする方法を学びます
screens:
  - image-slide:
      title: 2ステージコミット
      image: two-stage-commit-a.jpg
      presenter-script:
        - コードの変更が終わったら、コミットしましょう。コマンドラインで作業する際には、2ステージコミットという概念に慣れる必要があります。
  - image-slide:
      title: 2ステージコミット
      image: two-stage-commit-b.jpg
      presenter-script:
        - "ローカルで作業する間、ファイルは次の4つの状態のうちのどれかになります: untracked, modified, staged, または committed です。"
        - untracked というのはまだバージョン管理の対象になっていない状態です。
  - image-slide:
      title: 2ステージコミット
      image: two-stage-commit-c.jpg
      presenter-script:
        - これファのファイルをバージョン管理の対象にAddするには、ファイルを個別の目的単位でくくってやる必要があります。これをステージングエリアと言います。
  - image-slide:
      title: 2ステージコミット
      image: two-stage-commit-d.jpg
      presenter-script:
        - ステージングエリアにくくった単位でOKであれば、それらステージングエリアにあるものすべてをCommit(コミット)します。
  - image-slide:
      title: 2ステージコミット
      image: two-stage-commit-e.jpg
      presenter-script:
        - ファイルをバージョン管理の対象にするには、まず git add してそれから git commit する必要があります。やってみましょう。
  - video-slide:
      title: The Two Stage Commit
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: Type `git status`
          say: git statusすれば今いるブランチ上のファイルの状態をいつでも確認できます。
        - do: View status output
          say: ファイルの変更を保存したあとに見ると、変更がChanges not staged for commitのところに並んでいるはずです。そしてファイルはmodifiedと表示されているでしょう。
        - do: Type `git add <file-name.md>`
          say: 最初に実行するコマンドは git add ファイル名 です。
        - do: Type `git status`
          say: git status してみて、何が変わったか確認してみましょう。
        - do: View status output
          say: ファイルがChanges to be committedに並んでいると思います。ファイルがステージングエリアに移ったということです。
        - do: Type `git commit`
          say: 次に git commit してみましょう。これによってGitはステージングエリアにあるものを全て1つにまとめてバージョン管理システムにコミットします。コマンド実行後、Gitはデフォルトエディタを開いてコミットメッセージを入力するよう促します。
        - do: Type the commit message
          say: "エディタにメッセージを入力してください。#がついていない行はすべてコミットメッセージになります。"
        - do: Click `Save > Quit`
          say: コミットメッセージを入力し終わったら、保存してエディタを閉じてください。
        - do: Show git output message for commit
          say: コミットが終わるとGitはその内容をビジュアルに見せてくれます。
  - lab:
      title: 変更をコミットしよう
      id: CONT-CLI-04-lab-01
      presenter-script:
        - 2ステージコミットを使って変更をAddしてComimtしてみましょう
      steps:
        - description: ファイルをステージングエリアにAddする
          id: CONT-CLI-04-add
        - description: 変更をコミットする
          id: CONT-CLI-04-commit
additional-labs:
additional-questions:
resources:

---
