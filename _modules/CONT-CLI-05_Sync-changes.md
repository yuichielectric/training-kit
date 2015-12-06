---
layout: module
leadingpath: ../
title: 変更をPushする
pre-requisites: CONT-CLI-04_Two-stage-commit
learning-objective: ブランチを作ってMasterブランチとは別の作業環境を作って開発をしよう
screens:
  - image-slide:
      title: 変更をPushする
      image: push-pull.jpg
      presenter-script:
  - video-slide:
      title: 変更をPushする
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: Show push diagram from training kit
          say: "先ほどローカルファイルに変更をコミットしました。次はリモートにこれをPushしましょう。今回のケースの場合、我々のリモートはGitHub.comになりますが、もちろんリモートがみなさんの社内にあるGHEになる場合もあります。"
        - do: Type `git status`
          say: "またgit statusを実行し、状態を確認しましょう。ワーキングディレクトリが綺麗な状態のはずです。"
        - do: Type `git push`
          say: "変更をリモートにPushしましょう。git pushと打ちます。先ほどgitによってローカルブランチをGitHub上にある同じ名前のリモートブランチをトラックするように設定されたのを覚えているでしょうか。この設定がすでにされているため、単にgit pushとするだけでいいのです。"
        - do: Navigate to the `class repository`
          say: "さて、リモートのリポジトリを確認するとページのトップに先ほどPushしたブランチが表示されたバナーがあるのに気づいたでしょうか。"
        - do: Click `Compare & pull request`
          say: "変更はブランチ場で行われたので、GitHubはあなたがそれとmasterを比較したいのではないかと推測しているのです。ボタンを押して、Pull Requestを作り始めてください。"
        - do: Create a pull request
          say: "さて、先ほど学んだ方法と同じようにすればPull Requestを作ることができます。"
  - lab:
      title: ファイルをGitHubと同期する
      id: CONT-CLI-05-lab-01
      presenter-script:
        - ファイルをリモートにPushして、Pull Requestを作りましょう
      steps:
        - description: "コマンドラインを使って変更をリモートにPushします"
          id: CONT-CLI-05-push
        - description:  "GitHubを開いてPull Requestを作ります"
          id: CONT-CLI-05-pull-request
          verifications:
            - verification-type: pull-request
              id: CONT-CLI-05-pull-request-verification
              success-message: "Great job - you created a pull request"
              failure-message: "It looks like you haven't created a pull request. Want to try again?"
additional-labs:
additional-questions:
resources:

---
