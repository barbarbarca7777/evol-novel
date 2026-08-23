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
        Speaker   = 'Junpei'
        Listener  = 'Kaname'
        Current   = '葛城先生'
        ChangedAt = '第2話'
        Note      = '教師という立場もあり、当面は苗字+先生呼び。(キャラ名は三宅カナメ→葛城ミサトに変更済み)'
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
}
