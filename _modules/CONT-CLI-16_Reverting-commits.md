---
layout: module
leadingpath: ../
title: コミットの巻き戻し(Revert)
pre-requisites: CONT-CLI-15_Renaming-moving-files
learning-objective: コミットの巻き戻しについて学びましょう。
screens:
  - lab:
      title: コミットの巻き戻し
      id: CONT-CLI-16-lab-01
      presenter-script:
        - 次にコミットの巻き戻しの仕方について学びます。次の手順を実行して、準備をしてください。
      steps:
        - description: goodname.mdファイルを開いてテキストを追加してください。
          id: CONT-CLI-16-01-edit-01
        - description: 終わったらコミットしてください。
          id: CONT-CLI-16-01-commit-01
        - description: goodname.mdを開き直して、さらにファイルを変更してください。
          id: CONT-CLI-16-01-edit-02
        - description: 終わったらコミットしてください。
          id: CONT-CLI-16-01-commit-02
  - video-slide:
      title: コミットの巻き戻し
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `git log --stat`"
          say: "今作った履歴について見てみましょう。少なくとも2つのコミットが同一ファイルに対して行われているはずです。"
        - do: "直近のコミットIDの頭4文字をコピーします"
          say: "たとえば変更内容を間違ってしまったことに気づいたとして、最後のコミットを巻き戻したいとします。まず該当のコミットを探しだして、そのコミットのSHA-1の最初の数文字をコピーする必要があります。基本的には数文字でよいです。（一般的には7文字程度あればユニークになると言われています）"
        - do: "Type `git revert <commit ID>`"
          say: "git revertと打った後、先ほどコピーしたSHA-1文字列をペーストしてください。Gitは与えられたSHA-1のコミットと完全に正反対のコミットを新しく作ります。"
        - do: "Edit the commit message"
          say: "テキストエディタが開きますので、コミットメッセージを入れてください。"
        - do: "Click `Save > Close`"
          say: "保存して、テキストエディタを閉じてください。"
      production-notes:
  - lab:
      title: Reverting Your Commit
      id: CONT-CLI-16-lab-02
      presenter-script:
        - Now it is your turn to practice the steps we discussed.
      steps:
        - description: Revert the last commit you made on goodname.md.
          id: CONT-CLI-16-02-revert
additional-labs:
additional-questions:
resources:

---
