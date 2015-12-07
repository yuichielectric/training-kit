---
layout: module
leadingpath: ../
title: 間違えたコミットを修正する
pre-requisites: CONT-CLI-16_Reverting-commits
learning-objective: 直前のコミットで失敗してしまった時に採れる方法を探しましょう
screens:
  - lab:
      title: コミットを作りましょう
      id: CONT-CLI-17-lab-01
      presenter-script:
        - この後、コミットを変更する方法を学びます。練習の準備として、次の手順を実行してください。
      steps:
        - description: "`onefile.md`という名前のファイルを作成してください。コミットはまだです。"
          id: CONT-CLI-17-01-onefile
        - description: "`twofile.md`という名前のファイルを作成してください。コミットはまだです。"
          id: CONT-CLI-17-01-twofile
  - video-slide:
      title: 間違えたコミットを修正しよう
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `git add onefile.md`"
          say: "onefile.mdをステージングします"
        - do: "Type `git commit -m\"my mispelled commit msg\"`"
          say: "次にコミットメッセージを入力します。後で修正するためにここでは間違ったスペルで入力します。"
        - do: "Type `git status`"
          say: "onefile.mdをコミットしました。でも本当はtwofile.mdも同時にコミットに含めたかったのです。こういう時、commit --amendというコマンドが使えます。"
        - do: "Type `git add twofile.md`"
          say: "まずtwofile.mdをステージングする必要があります。"
        - do: "Type `git commit --amend`"
          say: "次にgit commit --amendと入力します。Gitは自動的にステージングエリアにある内容を直前のコミットに追加した上でエディタを開いてコミットメッセージを修正するように促します。"
        - do: "Type the corrected commit message"
          say: "ここで新しいコミットメッセージを入力することもできますし、必要なければ直前のコミットメッセージのままにしておくこともできます。"
        - do: "Click `Save > Quit`"
          say: "保存してエディタを閉じましょう。今回はファイルをコミットに追加し、コミットメッセージの修正もしました。単にコミットメッセージを修正したいだけなら、ステージングエリアに何も追加しない状態で同じコマンドを実行すれば実現できます。"
      production-notes:
  - lab:
      title: Commit Amendを使おう
      id: CONT-CLI-17-lab-02
      presenter-script:
        - さあ、実際に試してみましょう
      steps:
        - description: threefile.mdというファイルを作ってみます。
          id: CONT-CLI-17-02-threefile
        - description: "`threefile.md`を直前のコミットに追加してみましょう。"
          id: CONT-CLI-17-02-amend
additional-labs:
additional-questions:
resources:

---
