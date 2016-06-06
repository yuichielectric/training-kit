---
layout: module
leadingpath: ../
title: リモートから変更をPullしてこよう
pre-requisites: CONT-CLI-08_Workflow-review
learning-objective: リモートからローカルへ変更をPullしてみましょう。
screens:
  - image-slide:
      title: リモートから変更をPullしてこよう
      image: push-pull.jpg
      presenter-script:
        - フローの中で、コラボレータは頻繁にファイルを変更します。ですので、作業を始める前に、ローカルファイルを最新にアップデートする必要があります。
        - リモートに変更を送信するのにPushを使いましたが、変更を受信するにはPullを使います。リモートからPullしてくると、Gitは前回Pullした時と比較して新しく追加されたコミットをダウンロードします。そしてローカルブランチにそのコミットをマージしようとします。
  - video-slide:
      title: リモートから変更をPullしてこよう
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Open the CLI"
          say: "ターミナルを開いてください。"
        - do: "Type `git checkout master`"
          say: "既にリモート上では変更がmasterにマージされています。masterをチェックアウトしてみてください。"
        - do: "Type `git pull`"
          say: "git pullしてみてください。Gitは既に皆さんのローカルブランチがリモートのmasterブランチと関連づいていることを知っていますから（-uでUpstreamを設定しましたよね）、GitにどこからPullすべきかを教える必要はありません。"
        - do: "Show output"
          say: "Pullが終わると、GitはリモートからPullしてきた変更がもたらした内容についてレポートしてくれます。そしてマージがつつがなく終わったことを教えてくれます。"
        - do: "Type `git branch`"
          say: "気づくと思いますが、たとえGitHub上でブランチを消していても、ローカルのブランチは消えたりせず存在しています。"
        - do: "Type `git branch --merged`"
          say: "どのローカルブランチが既にmasterにマージされたかを知るには、git branchコマンドに--mergedオプションをつければよいです。あなたのローカルブランチがリストされているのが見えるはずです。この場合一般的に言って、ローカルのブランチを消しても安全だということです。"
        - do: "Type `git branch -d <branch-name>`"
          say: "ブランチを消すには、git branchコマンドに-dオプションを付ければよいです。"
      production-notes:
  - lab:
      title: 変更をPullする
      id: CONT-CLI-09-lab-01
      presenter-script:
        - <iframe width="560" height="315" src="https://www.youtube.com/embed/xdao5LCNoYE?list=PLg7s6cbtAD15G8lNyoaYDuKZSKyJrgwB-" frameborder="0" allowfullscreen></iframe><br/>
        - ローカルのリポジトリをアップデートしましょう
      steps:
        - description: "リモートから変更を取り込みます"
          id: CONT-CLI-09-pull
additional-labs:
additional-questions:
resources:

---
