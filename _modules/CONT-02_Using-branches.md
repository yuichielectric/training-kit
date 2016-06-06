---
layout: module
leadingpath: ../
title: ブランチを使ってみよう
pre-requisites: CONT-01_Understanding-github-flow
learning-objective: ブランチを作って、masterブランチと新機能の開発作業が混ざらないようにしよう。
screens:
  - image-slide:
      title: ブランチを使ってみよう
      image: branch-icon.jpg
      presenter-script:
        - プロジェクトにおいて、毎日ファイルを編集したり新しくファイルを追加したりしていると思います。
        - masterブランチのコードにリスクのあるコードを入れたくないのであれば、ブランチを作る必要があります。
        - ブランチを作るということは、基本的にはその時点でのプロジェクトと全く同一のコピーをmasterブランチと完全に切り端された形で作ることになります。
        - これによって、あなたが問題解決のためにコードを修正して挙動の変化を確認している時でも、masterブランチのコードを変更することなくそのまま維持しておくことができます。
        - さあ、ブランチの作り方を学びましょう。
  - video-slide:
      title: Creating a Branch
      video: http://youtu.be/xgQmu81G1yY
      video-script:
        - do: Navigate to the `class repository`
          say: Earlier you created an issue to create an introduction file. Let's create a branch that you will use to add your file.
        - do: Click the branch dropdown
          say: You can create a branch by clicking on the `branch dropdown`.
        - do: Enter the branch name 'firstname-lastname-intro'
          say: And entering a branch name in the text field.
        - do: Press `Enter`
          say: "When you press Enter, you are automatically switched to the `firstname-lastname-intro` branch. Now, any changes you make to the files in the repository will be applied to this new branch."
        - do: Go to another repo and then return to the class repo
          say: "However, a word of caution. When you leave the repository and come back, notice that GitHub automatically assumes you want to see the items on the master branch."
        - do: Click the branch dropdown and reselect the branch
          say: "If you want to continue working on your branch, you will need to reselect it using the branch dropdown. Now you are ready to create your own branch and start adding some commits."
  - lab:
      title: Creating a Branch
      id: CONT-02-lab-01
      presenter-script:
        - Let's practice creating a branch.
      steps:
        - description: "Create a branch in the repo named firstname-lastname (using your first and last names)."
          id: CONT-02-create-branch
          verifications:
            - verification-type: branch-created
              id: CONT-02-create-branch-verification
              success-message: "Great job - you created a branch."
              failure-message: "It looks like you didn't create a branch. Want to try again?"
additional-labs:
additional-questions:
resources:
  - title: YouTube Video - Branch
    url: https://youtu.be/H5GJfcp3p4Q?list=PLg7s6cbtAD15G8lNyoaYDuKZSKyJrgwB-

---
