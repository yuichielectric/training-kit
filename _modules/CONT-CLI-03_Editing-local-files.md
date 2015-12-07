---
layout: module
leadingpath: ../
title: ローカルファイルを変更する
pre-requisites: CONT-CLI-02_Cloning-a-repository
learning-objective: コマンドラインでファイルを変更しましょう
screens:
  - image-slide:
      title: ローカルファイルを変更する
      image: edit-icon.jpg
      presenter-script:
        - "リポジトリをクローンしてブランチをチェックアウトしました。ローカルファイルを変更する準備ができました。コマンドラインでファイルを変更することに慣れているのであれば、この章のほとんどはお馴染みのことかもしれません。いままでと違うのは、変更をブランチに対して行うという点です。先ほど作った自己紹介ファイルに対してさらに情報を追加しましょう。"
  - video-slide:
      title: ローカルファイルを変更する
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: Type `git branch`
          say: "どんな些細な変更でも、変更をする前にいま自分が正しいブランチにいるかどうかをダブルチェックして確認してください。"
        - do: Type `cd bios`
          say: "ファイルをファインダやエクスプローラで開くこともできますが、いまはコマンドライン上でbiosフォルダにcdで移動してみましょう。"
        - do: Type `atom <file-name.md>`
          say: "これからatomを使って編集します。コマンドラインからatomを開いてファイルを編集するということを行いますが、みなさんは好きなエディタを使って編集して構いません。"
        - do: Type changes in the file
          say: ファイルにあなた自身の情報を更に追加してください。
        - do: Click `Save > Quit`
          say: "終わったら保存してエディタを閉じましょう。"
        - do: Open the CLI
          say: ターミナルに戻って自分たちが何をしたのか見てみましょう。
        - do: Type `git checkout master`
          say: まずmasterブランチをチェックアウトしてみましょう。
        - do: Type `atom <file-name.md>`
          say: "masterブランチ上のファイルを開いてみると、先ほどの変更が含まれていないことに気づくはずです。"
        - do: Open the CLI
          say: ターミナルに戻りましょう
        - do: Type `git checkout <your branch>`
          say: 先ほどの自分のブランチをもう一回チェックアウトしてみましょう。
        - do: Type `atom <file-name.md>`
          say: "今度は変更が含まれているはずです。"
  - lab:
      title: ローカルファイルを変更する
      id: CONT-CLI-03-lab-01
      presenter-script:
        - ローカルファイルに変更をしてみましょう
      steps:
        - description: 自分の自己紹介ファイルを開きます
          id: CONT-CLI-03-open
        - description: 自分の情報を追加します
          id: CONT-CLI-03-edit
        - description: ファイルを保存します
          id: CONT-CLI-03-save
additional-labs:
additional-questions:
resources:

---
