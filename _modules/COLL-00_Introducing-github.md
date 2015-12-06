---
layout: module
leadingpath: ../
title: GitHubの紹介
pre-requisites:
learning-objective: GitHubの機能と、コラボレーションをいかに活性化するかについて紹介します
screens:
  - poll:
      title: Version Control Poll
      presenter-script:
        - Please tell us a little about your experience with version control.
      questions: # A poll might have one or more questions
        - title: Have you used a version control system before?
          id: COLL-00-pq1
          type: single-select # Question type - multiple-select, single-select, free-text-single-entry or free-text-multiple-entry
          options:
            - value: Yes, Git
              id: COLL-00-pq1-o1
              response: Great! Let's just make sure you're 100% clear about the differences between Git and GitHub.
            - value: Yes, but not Git
              id: COLL-00-pq1-o2
              response: Great! Welcome to Git and GitHub. You might find them a little different from your previous vcs's but we think you're going to like the differences!
            - value: No, not yet
              id: COLL-00-pq1-o3
              response: Welcome to the world of version control! It takes a bit of getting used to but you'll soon find out just how powerful a version control system can be for keeping track of your changed and collaborating with your team.
  - image-slide:
      title: GitHubってなに?
      image: github-icon.jpg
      presenter-script:
        - GitHubはGitという分散バージョン管理システムの上に構築されたコラボレーションプラットフォームです
  - image-slide:
      title: GitHubの主な機能
      image: collaboration-features.jpg
      presenter-script:
        - Gitリポジトリをホストしてシェアするだけでなく、GitHubはコラボレーションを活性化する様々な機能を備えています。機能追加やバグ修正について議論したければIssuesが、いまチームが開発している新機能について議論するのにPull Requestが、と言った具合にです。
  - image-slide:
      title: GitHubのエコシステム
      image: github-ecosystem.jpg
      presenter-script:
        - 好きなツールをGitHubに統合して使えます。一緒に継続的インテグレーションや継続的デプロイのためのツールを使えば、さらにチーム開発は効率的になります。
additional-labs:
additional-questions:
resources:
  - title: "Video: Intro to GitHub - GitHub & Git Foundations"
    url: https://youtu.be/vDv5K5PbvO8
  - title: "Video: GitHub & Git Foundations - Introduction"
    url: https://youtu.be/FyfwLX4HAxM
  - title: GitHub Integrations
    url: https://github.com/integrations

---
