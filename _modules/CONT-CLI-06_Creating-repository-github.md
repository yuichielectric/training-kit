---
layout: module
leadingpath: ../
title: GitHub上でリポジトリを作る
pre-requisites: CONT-CLI-05_Sync-changes
learning-objective: GitHub上で新しいリポジトリを作り、コラボレータを追加するベストプラクティスについて学びましょう。
screens:
  - image-slide:
      title: リポジトリを作る際の選択肢
      image: repository-options.jpg
      presenter-script:
        - "GitとGitHubを使って作業をする際には、リポジトリが必要です。新しくリポジトリを作るには2つの方法があります。 "
        - "1. リモートからリポジトリをクローンする "
        - "2. ローカルディレクトリ上で Git Init する "
        - "このセッションはGitとGitHubを効果的に使うにはどうすればいいかを伝えることにフォーカスしています。そのためここではコラボレーションを効果的に行うためにはどうしたらいいかという観点で考えたいと思います。"
        - "もし私があなたと一緒にプロジェクトを行いたいと思ったら、まずはGitHub上でリポジトリを作るところからスタートします。さあ、どうしたら最も効率的なのか、議論してみましょう。"

  - video-slide:
      title: GitHub上でリポジトリを作る
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "`+` の隣にある矢印をクリックして、 `Create New Repository` を選択する"
          say: "GitHubで新しいリポジトリを作るのはわずか数クリックでできます。まず、Create New Repository を選択してください。"
        - do: "リポジトリ名を入力する"
          say: "リポジトリ名はアカウント内でユニークでないといけません。どんな名前をつけたらいいか迷った場合には、GitHubが自動で作ってくれる名前を使うのも一つの手です。"
        - do: "Enter the repository description"
          say: "Descriptionにリポジトリの簡単な説明を書いてください。"
        - do: "Select `Public`"
          say: "リポジトリをPublicにするかPrivateにするかを選択できます。GitHub.com上でPublicなリポジトリを作ると、誰でもそのコードをみることができ、Cloneしたりプロジェクトをフォークしたりできる状態になりますが、あなたが彼らをコラボレータとしてリポジトリに追加しないかぎりは変更をPushすることはできません。Publicリポジトリは無料で使えます。リポジトリをPrivateにすると、明示的に権限を与えられた人でない限りみることもCloneすることも何もできません。Privateリポジトリを使うには少量の金額を支払う必要があります。"
        - do: "Click `Initialize with a README`"
          say: "READMEはあなたのリポジトリの玄関マットのようなものです。GitHubにおいては特別な挙動をします。リポジトリの情報を書いておくことができます。GitHubはリポジトリの直下にあるREADMEファイルを自動的にレンダリングしてくれます。なおこの機能は各サブディレクトリ内においても有効です。サブディレクトリの直下にREADMEを置くと、そのディレクトリのREADMEとしてレンダリングしてくれます。"
        - do: "Show gitignore options"
          say: "gitignoreを使うと、Gitにトラッキングしてほしくないファイルのタイプを定義することができます。ドロップダウンリストを参照すると、よく使われる言語については既にgitignoreが用意されており、その言語で通常トラッキング対象外にするファイルのタイプが予め定義されています。もちろんここで選んで作成されたgiignoreをあとから自分で編集することもできます。"
        - do: "Show license and the information icon"
          say: "ライセンスがなければ、オープンソースのプロジェクトとはいえません。ライセンスには様々な種類があります。正しいものを選択するのは難しいと思います。そのために我々はここでLICENSEを選択することができるようにしているのです。ヘルプを参照すれば世の中にどんなライセンスがあるのかもわかります。"
        - do: "Click `Create Repository`"
          say: "さあ、リポジトリを作りましょう。"
        - do: "Click `Settings > Collaborators`"
          say: "他の人に一緒にこのプロジェクトで作業したいと思ったとします。その際にはその人をコラボレータとして追加する必要があります。この作業はOrganizationにアカウントを追加するのとはちょっと違います。"
        - do: "Start typing `githubstudent`"
          say: "ユーザーネームの最初の何文字かをタイプするだけで、コラボレータとして追加したい人を探しだすことができます。"
      production-notes:
  - lab:
      title: リポジトリをクローンしよう
      id: CONT-CLI-06-lab-01
      presenter-script:
        - GitHub上にリポジトリを作りました。これを自分のローカルPCにクローンしてみましょう。
      steps:
        - description: "自分のローカルPCにクローンしてみましょう"
          id: CONT-CLI-06-clone
additional-labs:
additional-questions:
resources:

---
