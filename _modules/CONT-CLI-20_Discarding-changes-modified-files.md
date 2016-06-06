---
layout: module
leadingpath: ../
title: Modifiedファイルの変更を破棄する
pre-requisites: CONT-CLI-19_Resetting-history
learning-objective: unstagedファイルに施した変更を破棄する方法を学びましょう。
screens:
  - video-slide:
      title: Modifiedファイルの変更を破棄する
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type `echo \"This is my original content\" > changeme.md`"
          say: "次に変更したファイル中の変更をどうやって破棄したらいいかについて学びます。まず、changeme.mdというファイルを作りましょう。"
        - do: "Type `git add changeme.md`"
          say: "このファイルをmodified状態にしたいので、まずはこのファイルの履歴をバージョン管理下に置きたいです。ファイルをステージングしましょう。"
        - do: "Type `git commit -m\"Original changeme.md file\"`"
          say: "そしてコミットします。"
        - do: "Type `echo \"This is the content I will throw away\" >> changeme.md`"
          say: "ファイルの末尾にさらにテキストを追加します。"
        - do: "Type `git status`"
          say: "次にgit statusとタイプすると、ファイルがmodifiedになっていることに気づくかと思います。Git はここでも親切にどうやったらファイルから変更を破棄できるかを教えてくれています。"
        - do: "Type `git checkout -- changeme.md`"
          say: "Gitはgit checkoutするように教えてくれています。このコマンドは既にブランチをチェックアウトするときなどでおなじみかと思いますが、今回はそこに -- というオプションを加えることで今はファイルについてチェックアウトしたいんだとGitに知らせています。そしてファイル名を知らせます。"
        - do: "Type `git status`"
          say: "git statusとタイプすると、modifiedファイルが消えて、ワーキングディレクトリも綺麗になっていることがわかります。"
        - do: "Type `cat changeme.md`"
          say: "ファイルの中身を見てみると、2行目に追加した変更が消えていることがわかります。重要な事ですが、このコマンドは破壊的なオペレーションです。最後のコミットの後に追加した変更は永遠に消え去ります。このコマンドはmodifiedファイルを直前にコミットしたバージョンで上書きし、まるで変更が全くなかったかのようにしてしまいます。"
      production-notes:
  - lab:
      title: Modifiedファイルの変更を破棄する
      id: CONT-CLI-20-lab-01
      presenter-script:
        - <iframe width="560" height="315" src="https://www.youtube.com/embed/BKPjPMVB81g" frameborder="0" allowfullscreen></iframe>
      steps:
        - description: Edit the file `threefile.md`.
          id: CONT-CLI-20-edit
        - description: "Use `git checkout` to discard your changes."
          id: CONT-CLI-20-checkout

  - lab:
      title: Reflog
      id: CONT-CLI-20-lab-02
      presenter-script:
        - <iframe width="560" height="315" src="https://www.youtube.com/embed/Vxc9m_OVyo0" frameborder="0" allowfullscreen></iframe><br/>
        - ResetにせよCheckoutにせよ、履歴を操作するコマンドです。特に破壊的なオペレーションには気をつけましょう。ですが、ステージングやワーキングディレクトリの内容は消える可能性がありますが、コミットした履歴は消えることがありません。こまめにコミットを作ってさえいれば後から復旧することは可能なのです。

  - lab:
      title: Rebase
      id: CONT-CLI-20-lab-02
      presenter-script:
        　- <iframe width="560" height="315" src="https://www.youtube.com/embed/SxzjZtJwOgo" frameborder="0" allowfullscreen></iframe>
additional-labs:
additional-questions:
resources:
  - title: "Video: GitHub & Git Foundations - Reset"
    url: https://youtu.be/BKPjPMVB81g

---
