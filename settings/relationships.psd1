@{
    # キャラ同士の呼び方(二人称・呼称)の一覧。
    #
    # 注意: このファイルは Sync-Settings.ps1 の自動置換の対象外。
    # 呼び方は物語の時系列で変化するため(過去の話の地の文まで一括置換すると
    # 過去の関係性が壊れる)、ここは「今書いている話の時点で誰が誰をどう呼ぶか」
    # を確認するための参照用の台帳として使う。
    #
    # 新しい話を書くときは、この一覧を見て呼び方を統一する。
    # 呼び方が変わったら Current を更新し、ChangedAt にどの話で変わったかを記録する。

    Junpei_to_Sora = @{
        Speaker   = 'Junpei'
        Listener  = 'Sora'
        Current   = '綾波さん'
        ChangedAt = '第1話〜(第2話でキャラ名を氷室ソラ→綾波レイに変更、呼び方も追従)'
        Note      = '素っ気ないレイに対しては少し慎重で、苗字+さん呼び。'
    }

    Junpei_to_Asuka = @{
        Speaker   = 'Junpei'
        Listener  = 'Asuka'
        Current   = 'アスカ'
        ChangedAt = '第2話(別れ際、初めて名前で呼んだ)'
        Note      = 'ジュンペイの人懐っこい性格通り、早期から下の名前呼びに移行。'
    }

    Junpei_to_Keita = @{
        Speaker   = 'Junpei'
        Listener  = 'Keita'
        Current   = 'ケイタ'
        ChangedAt = '第1話〜(幼馴染のため最初から)'
        Note      = ''
    }

    Junpei_to_Kaname = @{
        Speaker       = 'Junpei'
        Listener      = 'Kaname'
        Current       = '葛城先生'
        ChangedAt     = '第2話'
        PlannedChange = 'ミサトさん'
        PlannedTiming = '中盤、距離が縮まってから'
        Note          = '教師という立場もあり、当面は苗字+先生呼び。関係が深まるにつれ「ミサトさん」呼びに移行する想定。'
    }

    Reiji_to_Kaname = @{
        Speaker   = 'Reiji'
        Listener  = 'Kaname'
        Current   = '葛城一佐'
        ChangedAt = '第3話〜'
        Note      = '組織の上下関係上、下の名前では呼ばない。苗字+階級で固定。'
    }

    Kaname_to_Reiji = @{
        Speaker   = 'Kaname'
        Listener  = 'Reiji'
        Current   = '司令'
        ChangedAt = '第3話〜'
        Note      = '職務上の上司として役職呼び。名前(ゲンドウ)では呼ばない。'
    }

    Riko_to_Kaname = @{
        Speaker   = 'Riko'
        Listener  = 'Kaname'
        Current   = 'ミサト'
        ChangedAt = '未執筆(設定のみ)'
        Note      = '対等な同僚かつ旧知の仲という想定で、下の名前呼び。'
    }

    Kaname_to_Riko = @{
        Speaker   = 'Kaname'
        Listener  = 'Riko'
        Current   = 'リツコ'
        ChangedAt = '未執筆(設定のみ)'
        Note      = ''
    }

    Sora_to_Shinji = @{
        Speaker   = 'Sora'
        Listener  = 'Shinji'
        Current   = '碇くん'
        ChangedAt = '第4話〜(設定として確定)'
        Note      = '組織内の顔見知り。原作の綾波レイ同様、どれだけ親しくなっても敬称を崩さない話し方が持ち味。'
    }

    Asuka_to_Shinji = @{
        Speaker   = 'Asuka'
        Listener  = 'Shinji'
        Current   = '碇'
        ChangedAt = '第4話〜(設定として確定)'
        Note      = '同じ組織の戦力として存在は把握しているが、個人的に親しくはない。ライバル視・やや見下し気味で、敬称なしの呼び捨て。'
    }

    Asuka_to_Kaname = @{
        Speaker       = 'Asuka'
        Listener      = 'Kaname'
        Current       = '未確定(本文未登場)'
        PlannedChange = 'ミサト'
        PlannedTiming = '中盤以降、距離が縮まってから(呼び捨てが似合うキャラ)'
        Note          = ''
    }

    Asuka_to_Junpei = @{
        Speaker   = 'Asuka'
        Listener  = 'Junpei'
        Current   = 'ジュンペイ'
        ChangedAt = '第2話(連行される直前、動揺して初めて名前で呼んだ)'
        Note      = 'ツンデレ気味に、心配のあまり素で名前を呼んでしまった形。'
    }

    Sora_to_Junpei = @{
        Speaker   = 'Sora'
        Listener  = 'Junpei'
        Current   = '鈴木くん'
        ChangedAt = '第2話'
        Note      = 'アスカとは対照的に、こちらは苗字+くんの慎重な呼び方を維持。(キャラ名は氷室ソラ→綾波レイに変更済み、呼び方自体は変更なし)'
    }

    Keita_to_Junpei = @{
        Speaker   = 'Keita'
        Listener  = 'Junpei'
        Current   = 'ジュンペイ'
        ChangedAt = '第1話〜(幼馴染のため最初から)'
        Note      = ''
    }

    Kaname_to_Junpei = @{
        Speaker   = 'Kaname'
        Listener  = 'Junpei'
        Current   = '鈴木くん'
        ChangedAt = '第2話'
        Note      = '教師としての立場から苗字+くん呼びで固定。'
    }

    Junpei_to_Shinji = @{
        Speaker   = 'Junpei'
        Listener  = 'Shinji'
        Current   = 'シンジ'
        ChangedAt = '第5話(初共闘の最中、名前で呼びかけた)'
        Note      = '第4話の「碇、だっけ」という探り探りの苗字呼びから、共鳴を経て下の名前呼びに移行。'
    }

    Shinji_to_Junpei = @{
        Speaker   = 'Shinji'
        Listener  = 'Junpei'
        Current   = '君'
        ChangedAt = '第5話(初めて明確にジュンペイへ呼びかけた)'
        Note      = '内向的で他人への呼びかけ自体が少ないシンジが、初めて自分から言葉を向けた相手。「お前」のような乱暴な二人称は彼の性格に合わないため、「君」を採用。'
    }
}
