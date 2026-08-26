@{
    # 作品全体の名称・固有名詞。書き換えると manuscript 内の該当箇所が自動で置換されます。

    Meta = @{
        Title = 'EVOL -エヴォル-'
    }

    School = @{
        SchoolName = '聖十字学園'
        PlaceName  = '第七学区'
    }

    OrgFront = @{
        OrgName = '創世機関'
        # NERV枠。学園の裏に存在する対使徒特務機関
    }

    OrgShadow = @{
        OrgName = 'セフィロト機関'
        # SEELE枠。裏で全てを操る黒幕組織
    }

    PowerSystem = @{
        Title      = 'EVA(エヴォリューション・ヴァルキリー・アーマー)'
        # 能力そのものの名称。乗り物ではなく、適合者が身体に纏う戦闘形態
        Technique  = 'AT フィールド(絶対領域)'
        # 防御と必殺技を兼ねる代表的な技名
    }

    Enemy = @{
        ShitoName = '使徒'
        # 敵側の能力者・改造人間の総称。聖書由来の天使名をコードネームとして使う(サキエル、シャムシエル等)。
        # 個体ごとのロースター・弱点ルール(コア)・技体系は settings/powersystem.psd1 を参照。
    }
}
