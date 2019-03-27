---
layout: module
leadingpath: ../
title: Pull Requestをマージしよう
pre-requisites: CONT-04_Editing-pull-request-files
learning-objective: Merge the changes made on your feature branch into your master branch.
screens:
  - image-slide:
      title: Pull Requestをマージしよう
      image: merge-logo.jpg
      presenter-script:
        - ここまでで、Pull Requestはレビューされて `master` ブランチにマージする準備ができているはずです。
        - ブランチをマージすることで、フィーチャーブランチ上のコンテンツや履歴を `master` ブランチに加えることになります。
        - 多くのチームでPull Requestを誰がマージするかルールを決めています。Pull Requestを作った人がマージするべきだとしているチームもあります。その理由は、Pull Requestを作った人はマージすることによってなにか問題が起きた際に対処するべきだからというものです。他にも、一貫性を保つために常に同じ人がマージするべきとしているチームもあります。Pull Requestを作った人以外であれば誰でも良いとしているチームもあります。
        - 継続的インテグレーション(CI)ツールと連携することで、マージをする前にテストが成功するかどうかのチェックを行うことが出来ます。それぞれのやり方にはメリット・デメリットがあるので、どのやり方がベストであると言うことは出来ません。プロジェクトチームの中で話し合って決めていきましょう。
        - Pull Requestをマージするのと同時にイシューをクローズすることも出来ます。
  - video-slide:
      title: Merging Pull Requests
      video: http://youtu.be/3MUmLHHxSqE
      video-script:
        - do: "Open the `pull request` to be merged"
          say: "Visit your pull request now that it's ready to be merged"
        - do: "Show the `Conversation` view"
          say: "You can merge a pull request at the bottom of the conversation view."
        - do: "Click `Merge pull request`"
          say: "You simply click the Merge pull request button."
        - do: "Show the merge confirmation window"
          say: "Now we want to include some special text that tells GitHub that this pull request should close the original issue."
        - do: Type `Fixes`
          say: "Fixes is one of the special keywords that GitHub looks for in merge commits."
        - do: "Type `#`"
          say: "We can use the # to auto-generate the link to the issue."
        - do: "Type a few letters from the issue name"
          say: "Since the issue title contained your username, you can type the first few letters of your GitHub username to narrow down the list of possible issues."
        - do: "Select the correct issue from the drop down"
          say: "Simply select your issue from the list."
        - do: "Click `Confirm merge`"
          say: "And click confirm merge."
        - do: "Show confirmation message"
          say: "A confirmation message will let you know that your pull request was merged and closed. It also let's you know that the branch we created can be safely deleted."
        - do: "Click `Delete branch`"
          say: "Since we won't be using this branch anymore, you should go ahead and delete it now."
        - do: "Click `Issues` and then filter to see the `Closed` issues"
          say: "You can now go back to the issues tab and you will see that your issue has been closed. Congratulations, you have completed your first contribution on GitHub."
      production-notes:
  - lab:
      title: Pull Requestをマージしよう。
      id: CONT-05-lab-01
      presenter-script:
        - マージをすることで変更をmasterに取り込もう。
      steps:
        - description: "作成したPull Requestをマージしよう。"
          id: CONT-05-merge
          verifications:
            - verification-type: pull-request-merged
              id: CONT-05-merge-verification
              success-message: "Great job - you have merged your branch."
              failure-message: "It looks like you haven't merged your branch. Want to try again?"
additional-labs:
additional-questions:
resources:
  - title: Special Keywords for Closing Issues
    url: https://help.github.com/articles/closing-issues-via-commit-messages/

---