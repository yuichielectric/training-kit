---
layout: module
leadingpath: ../
title: Issuesを使ってみよう
pre-requisites: COLL-01_Exploring-a-repository
learning-objective: GitHub Issuesを使ってアイディアや機能拡張についての議論、タスクやバグについて議論してみましょう
screens:
  - image-slide:
      title: Issuesを使ってみよう
      image: issues-icon.jpg
      presenter-script:
        - "GitHub issuesを使うことで様々な観点でコラボレーションが円滑になります。例えば:"
        - Eメールで議論する代わりに使えます。これによって、誰もが簡単に文脈を共有して議論に参加できます。
        - Pull RequestとIssuesの間で相互にリンクを貼ることができます。
        - どうしてそういう結論に至ったかについての記録が残ります。
        - 議論に関連する人を巻き込むことが簡単になります。
  - video-slide:
      title: Using Issues
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: Navigate to the `class repository`
          say: Let's dive a little deeper into Issues.
        - do: "Navigate to the issue `Class Goals`"
          say: Here, I will create an issue titled Class Goals. Let's look at some of the special features in issues that you will use to collaborate with your team.
        - do: Add an issue comment demonstrating markdown formatting for headers, bullets and checkboxes.
          say: GitHub uses a syntax called Markdown to help you add basic text formatting to issues.
        - do: "@mention any co-teachers"
          say: One of our favorite features is the @mention. When you @mention someone in an issue, they will receive a notification - even if they are not currently subscribed to the issue or watching the repository.
        - do: Click `Preview`
          say: You can use the preview tab to see how your comment will be rendered (meaning how GitHub will actually display your Markdown file).
        - do: Include an issue attachment
          say: You can also add pictures by simply dragging and dropping them into the comment field, or clicking the file uploader link.
        - do: Click `Comment`
          say: Click the green comment button to add your comments to the discussion.
        - do: Return to the `Issues` view
          say: As you can imagine, a large project can have hundreds of issues. Let's look at a few ways your project team can organize issues.
        - do: "`Assign` the issue to the co-teacher"
          say: First, you can assign issues to anyone with access to the repo. Typically, this will be the person who is currently responsible for the next step in the life of the issue. The issue assignee may change over time.
        - do: Add a `label` to the issue
          say: You can also use labels to help you organize issues. GitHub comes with a number of built-in labels, but you can always delete those or add your own. As a project grows in size, using assignees and labels makes it much easier to find a specific issue.
        - do: "Click `Issues > Filters`"
          say: Filters allow you to easily search for Issues by creator, labels, assignees and more. We will continue to explore these features throughout the course. For now, let's practice creating an issue!
  - lab:
      title: issueを作ってみよう
      id: COLL-02-lab-01
      presenter-script:
        - さあ、issueを作ってみましょう！
      steps:
        - description: "issueを作って、あなたの自己紹介をリポジトリに追加してください。issueには次の情報を含めてください: 氏名, 自己紹介追加のお願い, いくつかmarkdown書式をテストで, そして最後にインストラクターを@メンションで通知してください。"
          id: COLL-02-create-issue
          verifications:
            - verification-type: issue-created
              id: COLL-02-create-issue-verification
              success-message: "Great job - you created an issue."
              failure-message: "It looks like you didn't create an issue. Want to try again?"
        - description: 作ったissueを自分にアサインしてください。 # optional for Monday
          id: COLL-02-assign-issue
          verifications:
            - verification-type: issue-assigned-to-self
              id: COLL-02-assign-issue-verification
              success-message: "Great job - you assigned the issue to yourself."
              failure-message: "It looks like you didn't assign the issue to yourself."
        - description: 自己紹介というラベルをissueに追加してください # optional for Monday
          id: COLL-02-label-issue
          verifications:
            - verification-type: issue-labeled
              id: COLL-02-label-issue-verification
              success-message: "Great job - you applied the 'Bio' label to the issue"
              failure-message: "It looks like you didn't apply the 'Bio' label to the issue."
additional-labs:
additional-questions:
resources:
  - title: About Issues
    url: https://help.github.com/articles/about-issues/
  - title: Creating an Issue
    url: https://help.github.com/articles/creating-an-issue/
  - title: Issue attachments
    url: https://help.github.com/articles/issue-attachments/
  - title: Assigning Issues to other GitHub users
    url: https://help.github.com/articles/assigning-issues-and-pull-requests-to-other-github-users/
  - title: Filtering Issues by assignees
    url: https://help.github.com/articles/filtering-issues-and-pull-requests-by-assignees/
  - title: Using search to filter Issues
    url: https://help.github.com/articles/using-search-to-filter-issues-and-pull-requests/

---
