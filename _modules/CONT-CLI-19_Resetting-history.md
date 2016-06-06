---
layout: module
leadingpath: ../
title: 履歴のリセット
pre-requisites: CONT-CLI-18_Unstaging-files
learning-objective: 歴史の書き換えをする方法を学びます
screens:
  - image-slide:
      title: Git Reset
      image: reset-visual.jpg
      presenter-script:
        - "ブランチで作業をしていると、時々、元々予定していたとおりに作業が進んでいないことに気がつくことがあります。歴史のある時点に戻りたいと思うような時です。git resetを使えばこれができるのです。"
        - "`git reset`コマンドは今いるブランチ上のHEADの位置を動かします。このコマンドの使い方を学ぶ前に、HEADという概念を理解しておく必要があります。"
        - "HEADはブランチ上において今いる場所を指し示すポインターです。ブランチが履歴中の最新コミットを指すポインターであるのと対照的です。"
        - "resetコマンドを使うと、HEADが指し示している場所を移動することになります。resetをするまえに問いかけないといけないこととしては、「現在のHEADとこれからresetしようとしているコミットとの間で何をしたいのか？」です。"
  - image-slide:
      title: Git Reset Modes
      image: reset-modes.jpg
      presenter-script:
        - "git resetには3つのモードがあります: --soft, --mixed, --hardの3つです。"
        - "`--soft`オプションを使うと、gitはHEADを動かして、そこで止まります。2つのポイント間であなたが作ったコミットはステージングエリアに移動します。ですが作業中のファイルやインデックスは変更されずにそのまま維持されます。このコマンドはたとえば、たくさんの小さなコミットを作ってしまった後、それらを1つのコミットにまとめ直したい時などに便利です。"
        - "`--mixed`オプションを使うと、gitはsoft resetをした後、さらに一歩進んでインデックスを変更し、HEADが指し示しているポイントのまさにそのままの状態にインデックスを再現します。Mixedはresetのデフォルトモードです。"
        - "--mixed と --soft は両方共安全なオプションです。どちらもワーキングディレクトリを上書きしたりはしないからです。"
        - "`--hard`は破壊的なバージョンです。--hardオプションを使うと、Gitはワーキングディレクトリとインデックスの両方を書き換え、HEADを新しい場所のように見せます。言い換えると、新しいポイントと古いポイントの間にあるすべての変更を、ワーキングディレクトリの内容を含めてすべて破棄するのです。 "
        - "さあ、それぞれのオプションを試してみましょう。"
  - video-slide:
      title: Soft Reset
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type git log --oneline --graph --decorate --all"
          say: "Soft Resetからはじめましょう。まず、logコマンドを使ってプロジェクトの歴史を見てみましょう。"
        - do: "Show HEAD"
          say: "ASCIIグラフを使って今HEADがどこを指しているのかをみることができます。2つのコミットを遡ってみたいと思います。"
        - do: "Type git reset --soft HEAD~2"
          say: "git reset --softとタイプした後、どこまでリセットしたいかをGitに教えましょう。このケースの場合、チルダを使って、現在のHEADから2コミット分リセットしたいとGitに知らせています。"
        - do: "Type git status"
          say: "git statusすることで2コミットの中で加えた変更が今ステージングエリアに待機していてコミットを待っていることがわかります。"
        - do: "Type git log --oneline --graph --decorate --all"
          say: "git logを見るとresetする前までにいた歴史から、2コミット分遡っていることがわかります。"
        - do: "Type git commit -m\"grouping commits for cleaner history\""
          say: "さあ変更を改めてコミットしましょう。"
      production-notes:
  - video-slide:
      title: Mixed Reset
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type git log --oneline --graph --decorate --all"
          say: "次にmixed resetです。まず履歴を確認しましょう。"
        - do: "Show HEAD"
          say: "今回は1コミットだけ戻したいと思います。"
        - do: "Type git reset HEAD~"
          say: "git resetをオプションなしで実行しましょう。--mixedはデフォルトモードなので、オプションは必要ありません。そしてどこまで戻したいかをGitに知らせましょう。今回はチルダ1つだけを使って、HEADから1コミット前に戻すことを示しています。"
        - do: "Type git status"
          say: "さて、git statusを実行すると変更がステージングされていないことがわかります。コミットしたいなら、まずステージングする必要があります。"
        - do: "Type git commit -m\"another reset example\""
          say: "さあ改めて変更をコミットしましょう。"
      production-notes:
  - video-slide:
      title: Hard Reset
      video: https://www.youtube.com/watch?v=r5C6yXNaSGo
      video-script:
        - do: "Type git log --oneline --graph --decorate --all"
          say: "最後にhard resetです。"
        - do: "Show HEAD"
          say: "今回はここまで作ってきたファイルをすべて上書きすべく、一番最初のコミットまで戻してしまいましょう。"
        - do: "Type git reset --hard <commit ID>"
          say: "git reset --hardとタイプし、リセットしたいコミットIDを渡しましょう。"
        - do: "Type git status"
          say: "今回git statusとタイプすると、ワーキングディレクトリが綺麗になっていることがわかります。なぜなら、reset --hardはワーキングディレクトリの内容も全て破棄してしまうからです。"
      production-notes:
  - lab:
      title: Git Reset
      id: CONT-CLI-21-lab-02
      presenter-script:
        - <iframe width="560" height="315" src="https://www.youtube.com/embed/BKPjPMVB81g" frameborder="0" allowfullscreen></iframe>
      steps:
additional-labs:
additional-questions:
resources:
  - title: "Video: GitHub & Git Foundations - Reset"
    url: https://youtu.be/BKPjPMVB81g

---
