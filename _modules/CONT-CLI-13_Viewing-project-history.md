---
layout: module
leadingpath: ../
title: プロジェクトの履歴を参照する
pre-requisites: CONT-CLI-12_Merging-changes
learning-objective: プロジェクトの履歴を参照するためのコマンドについて学びましょう
screens:
  - video-slide:
      title: プロジェクトの履歴を参照する
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `git pull origin`"
          say: "皆さん変更をマージしてリモートにPushしたでしょうか。ここでリモートの変更をローカルにPullしましょう。git pullを実行してください。"
        - do: "Type `git log`"
          say: "これまでいくつかの変更を加えました。どうなっているかプロジェクトの履歴をみてみましょう。git logが最も基本となるコマンドです。このコマンドで、ブランチに対して行われた変更履歴を降順で見ることができます。"
        - do: "Press `q`"
          say: "履歴を見ている間は、上や下カーソルを押すかenterキーを押すことでログエントリを見ることができます。qを押すと終了することができます。"
        - do: "Type `git log --oneline`"
          say: "git logはいろんな情報を見せてくれますが、少し多すぎます。凝縮バージョンを見たければ、 --oneline オプションを追加するといいです。"
        - do: "Type `git log --oneline --graph`"
          say: "logコマンドには様々なオプションがあります。様々組み合わせることでいろいろな見方をすることができます。例えば、--graphオプションを追加すると、ブランチやマージの履歴をASCIIグラフの形で見ることができます。"
        - do: "Type `git log --oneline --graph --decorate`"
          say: "さらにブランチについての情報と、HEADがどこにあるのかを確認したい場合は --decorate オプションを追加すればいいです。"
        - do: "Type `git log --oneline --graph --decorate --all`"
          say: "もしマージされていないブランチの情報も見たければ、--all オプションを追加するといいです。"
        - do: "Type `git log --stat`"
          say: "どのファイルがどのコミットに含まれているのか知りたければ、 --stat オプションが使えます。"
        - do: "Type `git log --patch`"
          say: "さらに実際の変更内容を見たい場合は、--patch オプションが使えます。"
      production-notes:
  - lab:
      title: プロジェクトの履歴をみてみよう
      id: CONT-CLI-13-lab-01
      presenter-script:
        - <iframe width="560" height="315" src="https://www.youtube.com/embed/Ew8HQsFyVHo" frameborder="0" allowfullscreen></iframe><br/>
        - git log のオプションをいろいろ試してみましょう
      steps:
        - description: "git logをしてみましょう"
          id: CONT-CLI-13-log-simple
        - description: "git log --oneline　するとどうなるでしょうか"
          id: CONT-CLI-13-log-oneline
        - description: "git log --oneline --graph --decorate --all　はどうでしょうか"
          id: CONT-CLI-13-log-complex
additional-labs:
additional-questions:
resources:
  - title: "Video: GitHub & Git Foundations - Log"
    url: https://youtu.be/Ew8HQsFyVHo

---
