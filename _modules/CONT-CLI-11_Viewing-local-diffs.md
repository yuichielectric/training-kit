---
layout: module
leadingpath: ../
title: ローカルのDiffを見てみよう
pre-requisites: CONT-CLI-10_Modifying-local-files
learning-objective: ワークフローの各フェーズにおいてどうやってファイルのDiffを確認できるかみてみましょう
screens:
  - image-slide:
      title: ローカルファイルの状態を比較する
      image: diff-options.jpg
      presenter-script:
        - "前章で、ローカルファイルにいくつかの変更を施しました。それぞれが別々のステージに現れるようにしました。git diffコマンドによってファイルの何がどう変わったのかを確認することができます。色々なオプションもありますので確認してみましょう。"
  - video-slide:
      title: ローカルのDiffを見てみよう
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `git diff`"
          say: "まずはオプションなしでgit diffコマンドを試してみましょう。このコマンドはファイル毎にワーキングディレクトリとステージングエリアとの間の差異を比較します。."
        - do: "Type `git diff --staged`"
          say: "次に--stagedオプションを追加してみましょう。こうすると今度はファイル毎のステージングエリアのバージョンと直近コミットされたバージョンとを比較します。"
        - do: "Type `git diff HEAD`"
          say: "git diff HEADをすると、今度はワーキングディレクトリとステージングエリアの変更を1つにした上で、現在HEADになっているバージョンと比較をします。大抵の場合、ファイルの最新のコミットと比較されることになります。"
        - do: "Type `git diff --color-words`"
          say: "git diffはデフォルトでは行ごとの変更について比較しますが、変更が小さかった場合、あまり役に立たないことがあります。そんな時には --color-words オプションを使うと、wordごとに比較してくれます。"
      production-notes:
  - lab:
      title: Diffを確認して変更をコミットしましょう
      id: CONT-CLI-11-lab-01
      presenter-script:
        - git diffのオプションについていろいろ試してみましょう
      steps:
        - description: いろいろな変更をしてみて、git diffをするとどうなるか見てみましょう
          id: CONT-CLI-11-diff
        - description: 作業が終わったら、変更をコミットしましょう
          id: CONT-CLI-11-commit
additional-labs:
additional-questions:
resources:
  - title: "Video: Git & GitHub Foundations - Diff"
    url: https://help.github.com/articles/closing-issues-via-commit-messages/

---
