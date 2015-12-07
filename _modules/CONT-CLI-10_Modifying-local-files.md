---
layout: module
leadingpath: ../
title: ローカルファイルを変更する
pre-requisites: CONT-CLI-09_Pulling-changes
learning-objective: よくあるシナリオを体験してみましょう
screens:
  - video-slide:
      title: ローカルファイルを変更する
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `atom <file-name.md>`"
          say: "いまローカルブランチはmasterと同じ最新状態になっています。これから、コマンドラインを使ってローカルで作業をしているとよく遭遇する2つのシナリオをシミュレーションしてみましょう。まず、前に作成したファイルを開きます。"
        - do: "Make and save changes"
          say: "変更をいくつか加えて、ファイルを保存します。"
        - do: "Type `git status`"
          say: "git statusしてみると、ファイルは変更されたけれどもまだステージングされていないことがわかります。でも問題があります。実はまだmasterブランチ上で作業していました。変更はフィーチャーブランチ上で行わないといけませんでしたよね。"
        - do: "Type `git checkout -b <branch-name>`"
          say: "幸い、まだワーキングディレクトリとステージングエリアがあるだけです。つまりファイルをコミットする前に新しいブランチを作ることができるのです。さてここでは、ブランチを作りつつチェックアウトする事のできるショートカットを使ってみましょう。git checkoutに-bオプションを付ければいいのです。"
        - do: "Type `git add <file-name.md>`"
          say: "ファイルをステージングする準備が整いました。"
        - do: "Type `git status`"
          say: "git statusするとファイルをコミットする準備が整ったことがわかります。でも実は個々でまだ変更しないといけないことが残っていたことを思い出しました。"
        - do: "Make and save more changes"
          say: "ファイルに戻って更に変更をして、保存します。"
        - do: "Type `git status`"
          say: "さてここでgit statusすると、同じファイルがコミット可能な状態とまだステージングされていない状態と2つの状態に分かれて見えます。もしいまこのままコミットすると、最初の変更だけが実際の変更としてコミットされることになります。"
      production-notes:
  - lab:
      title: ローカルファイルを変更しよう
      id: CONT-CLI-10-lab-01
      presenter-script:
        - 次の章の準備のために、ファイルの変更をして上記の状態を作りましょう
      steps:
        - description: "ファイルを開いて変更をします"
          id: CONT-CLI-10-edit-01
        - description: "変更を保存して、ステージングします **この時点ではコミットしないでください**"
          id: CONT-CLI-10-stage
        - description: "同じファイルをまた開いて、別の変更を追加します"
          id: CONT-CLI-10-edit-02
        - description: "保存します"
          id: CONT-CLI-10-save
        - description: "git statusします"
          id: CONT-CLI-10-status
additional-labs:
additional-questions:
resources:

---
