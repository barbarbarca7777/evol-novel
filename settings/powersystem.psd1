@{
    # 能力体系。添付資料の第4章(統一等級表)・第12章(等級・能力体系)・第8章(神話マッピング)・
    # 本校技一覧を移植(2026-08-27、ベース乗り換え)。原本は notes/source_v2/ を参照。
    # 旧設定(EVA型/AT フィールド/成長段階)は archive/v1-evol/powersystem.psd1 に保存。

    # 第4章・第12章 統一等級表(能力者等級8段階+影霊等級7段階の旧二本立てを廃止し、同じ物差しで測る統一7段階)
    RankTable = @(
        @{ Rank = '特級';   AsAbility = '人類到達点';        ThreatEquivalent = '神災級・人類存亡'; Population = '常時維持: 現存2〜3名。瞬間到達: 歴史上数名' }
        @{ Rank = '準特級'; AsAbility = '壱級を明確に超える'; ThreatEquivalent = '災級上位';         Population = '現存10名前後' }
        @{ Rank = '壱級';   AsAbility = '世界の切り札';       ThreatEquivalent = '災級・都市壊滅';   Population = '30〜40名' }
        @{ Rank = '弐級';   AsAbility = '国内トップクラス';   ThreatEquivalent = '禍級・都市機能麻痺'; Population = '百名前後' }
        @{ Rank = '参級';   AsAbility = '精鋭';               ThreatEquivalent = '厄級・区画壊滅';   Population = '数百〜千' }
        @{ Rank = '肆級';   AsAbility = '一人前';             ThreatEquivalent = '障級・建物被害';   Population = '数千' }
        @{ Rank = '伍級';   AsAbility = '基礎習得・新人';     ThreatEquivalent = '塵級・日常出現';   Population = '数万' }
    )
    RankNotes = @(
        'ジュンペイの「伍門」は、開放時のみ限定的に特級クラスの出力を誇る「瞬間特級」として扱う。'
        'NERV学園の通常の学年実力基準: 伍級が大半、肆級が数名、参級が1〜2名いれば優秀、弐級は学年に1人いれば大騒ぎ、壱級は在学中に到達すれば歴代でも語り継がれるレベル。シンジたちの世代は選抜クラスの多くが壱級以上に到達する異常な「当たり年」(ゲンドウの意図的な選抜が背景にある)。'
    )

    # 第12章 成長推移表(入学時点でのランクは第1話の測定シーン等で直接使う数値)
    GrowthProgression = @{
        HonkoGrade1 = @(
            @{ Character = 'アスカ'; AtEnrollment = '参級'; Part1End = '弐級'; Part2 = '弐級'; Part34 = '壱級'; Final = '特級(続編)' }
            @{ Character = 'レイ'; AtEnrollment = '参級'; Part1End = '弐級'; Part2 = '弐級'; Part34 = '壱級'; Final = '特級(続編)' }
            @{ Character = 'トウジ'; AtEnrollment = '参級'; Part1End = '参級'; Part2 = '弐級'; Part34 = '弐級'; Final = '準特級(第4部)' }
            @{ Character = 'ソラ'; AtEnrollment = '参級'; Part1End = '参級'; Part2 = '弐級'; Part34 = '壱級'; Final = '準特級' }
            @{ Character = 'ケンスケ'; AtEnrollment = '肆級'; Part1End = '参級'; Part2 = '弐級'; Part34 = '弐級'; Final = '壱級' }
            @{ Character = 'ヒカリ'; AtEnrollment = '肆級'; Part1End = '参級'; Part2 = '参級'; Part34 = '弐級'; Final = '壱級' }
            @{ Character = 'タクマ'; AtEnrollment = '肆級'; Part1End = '参級'; Part2 = '参級'; Part34 = '弐級'; Final = '壱級' }
            @{ Character = 'リョウ'; AtEnrollment = '肆級'; Part1End = '参級'; Part2 = '弐級'; Part34 = '弐級'; Final = '壱級' }
            @{ Character = 'ミヤコ'; AtEnrollment = '肆級'; Part1End = '肆級'; Part2 = '参級'; Part34 = '弐級'; Final = '弐級' }
            @{ Character = 'シホ'; AtEnrollment = '肆級'; Part1End = '肆級'; Part2 = '参級'; Part34 = '弐級'; Final = '弐級' }
            @{ Character = 'シンジ'; AtEnrollment = '測定不能'; Part1End = '測定不能'; Part2 = '測定不能'; Part34 = '測定不能'; Final = '特級' }
            @{ Character = 'ジュンペイ'; AtEnrollment = '零'; Part1End = '零(参門一度到達)'; Part2 = '零(弐門常用/参門制限)'; Part34 = '零(四門・伍門)'; Final = '零(伍門=瞬間特級)' }
        )
        KyotoGrade1 = @(
            @{ Character = 'ハヤテ'; AtEnrollment = '参級'; Part2 = '弐級'; Part34 = '壱級'; Final = '準特級' }
            @{ Character = 'ソウ'; AtEnrollment = '肆級'; Part2 = '参級'; Part34 = '弐級'; Final = '壱級' }
            @{ Character = 'アオイ'; AtEnrollment = '肆級'; Part2 = '参級'; Part34 = '弐級'; Final = '壱級' }
            @{ Character = 'ミツキ'; AtEnrollment = '肆級'; Part2 = '肆級'; Part34 = '参級'; Final = '弐級' }
        )
        EuropeGrade1 = @(
            @{ Character = 'クロエ'; AtEnrollment = '参級'; Part2 = '弐級'; Part34 = '壱級'; Final = '準特級' }
        )
        FinalRankSummary = @(
            @{ Rank = '特級'; Count = 3; Characters = @('シンジ', 'アスカ(続編)', 'レイ(続編)') }
            @{ Rank = '瞬間特級'; Count = 1; Characters = @('ジュンペイ') }
            @{ Rank = '準特級'; Count = 4; Characters = @('トウジ', 'ソラ', 'ハヤテ', 'クロエ') }
            @{ Rank = '壱級'; Count = 7; Characters = @('ケンスケ', 'ヒカリ', 'タクマ', 'リョウ', 'ソウ', 'アオイ', 'ソウタ') }
            @{ Rank = '弐級'; Count = 3; Characters = @('ミヤコ', 'シホ', 'ミツキ') }
        )
    }

    # 能力5分類体系
    PowerTypes = @(
        @{ Type = '属性型'; Note = '自然現象・元素を扱う'; Examples = @('炎', '雷', '風', '水', '光', '砂') }
        @{ Type = '身体型'; Note = '自分の肉体に力が宿る'; Examples = @('怪力', '高速', '硬化', '爪') }
        @{ Type = '具現型'; Note = '力を形に変換・使役する'; Examples = @('剣', '槍', '鎖', '狐霊', '式神', '扇', '鎧') }
        @{ Type = '領域型'; Note = '場や対象の状態に作用する'; Examples = @('重力', '鎮静', '吸収', '結界', '回復', '隠蔽') }
        @{ Type = '情報型'; Note = '情報を得る・記録・解析'; Examples = @('索敵', '記録', '解析', '運命視', '戦術構築') }
    )
    PowerTypeNotes = '分類外: シンジ(測定不能)、ジュンペイ(門・霊格ゼロ)、カヲル(ルシファー依代)。複合型あり、メインの型を先に記載する。覚醒段階(零段〜禁忌)は等級とは別軸の成長体系で、第2部以降に初出。序盤では使用しない。'

    MeasurementFormat = @{
        Rule     = 'リツコの台詞は「宿し名+型+等級+補足」で統一する。'
        Examples = @(
            'ヘラクレス。身体型。参級。出力は安定している。'
            'ヘイムダル。情報型。肆級。広域感知。'
            'ブリュンヒルデ。属性型。参級。制御精度が高い。'
            'シンジ: ……測定不能。型分類なし。データ上は未分類。'
            'ジュンペイ: 霊格反応なし。零。宿しの反応もなし。'
        )
    }

    # ジュンペイの五門(霊格ゼロの主軸技術)
    JunpeiFiveGates = @{
        Intro = '門の発見者は蘆田ゲン(準特級・武甕槌命)。霊格回路損傷後、霊格の補助技術として門を発見。肆門まで到達可能(参門・肆門は負担付き)。伍門には一度だけ到達(52歳・第一次災厄・回路崩壊・心肺停止)。霊格+門の同時運用が可能な唯一の人間。ジュンペイは蘆田から基礎を継承し、霊格ゼロの主軸技術として五段階に体系化・完成させた。'
        Gates = @(
            @{ Gate = '壱門'; DisplayName = '力門'; Effect = '筋力と速度の強化'; Cost = '筋繊維損傷' }
            @{ Gate = '弐門'; DisplayName = '眼門'; Effect = '五感の極限拡張'; Cost = '感覚過負荷' }
            @{ Gate = '参門'; DisplayName = '空門'; Effect = '身体と意識の完全同期'; Cost = '日常感覚喪失' }
            @{ Gate = '肆門'; DisplayName = '鬼門'; Effect = '神域に迫る出力、黒い蒸気'; Cost = '骨ヒビと臓器負荷' }
            @{ Gate = '伍門'; DisplayName = '人門'; Effect = '人間の究極到達点'; Cost = '肉体破壊・ほぼ確実な死' }
        )
        Meaning = '四門は単なる「次の強い技」ではなく、人間が壊れ始める境界として扱う。三門までは戦闘技術の延長だが、四門からは肉体そのものを代価にする領域。これにより第4部「人間の証明」で伍門に至る流れに説得力が生まれる。'
        MasterVsPupil = @{
            AshidaGen = @{ Usage = '霊格の補助として使用'; StableReach = '弐門(参門・肆門は負担付き)'; MaxReach = '伍門(一度だけ→第4部で二度目)'; GoDaimonCost = '霊格回路崩壊・心肺停止' }
            Junpei    = @{ Usage = '霊格ゼロの主軸として使用'; StableReach = '物語進行に応じて段階的に上昇(第2部で弐門安定化)'; MaxReach = '伍門(最終決戦で到達)'; GoDaimonCost = '肉体破壊・ほぼ確実な死(霊格回路がない分、負荷は全て肉体に直接かかる)' }
        }
        UnlockSchedule = @(
            @{ Part = '第2部'; 壱門 = '常用'; 弐門 = '常用・完成'; 参門 = '条件付き限定再使用'; 四門 = '匂わせのみ or 理論開示'; 伍門 = '完全温存' }
            @{ Part = '第3部'; 壱門 = '常用'; 弐門 = '常用'; 参門 = '正式解禁'; 四門 = '一度だけ接触'; 伍門 = '完全温存' }
            @{ Part = '第4部'; 壱門 = '常用'; 弐門 = '常用'; 参門 = '主力'; 四門 = '正式解禁'; 伍門 = '最終解禁' }
        )
        RoleByPart = @(
            @{ Part = '第2部'; Role = '守るために危険域へ戻る人'; Climax = '参門の限定再使用' }
            @{ Part = '第3部'; Role = '門の意味を知り、禁に触れる人'; Climax = '四門への接触' }
            @{ Part = '第4部'; Role = '人間として極限到達する人'; Climax = '伍門解禁' }
        )
        OpenQuestions = @(
            '第2部でのジュンペイの参門使用回数: 1回だけにするか/中盤で兆候・終盤で本使用にするか/クリスマス侵攻専用にするか'
            '四門への初接触の具体イベント: 誰との戦いで触れるか/師ゲンの前か別の極限状況か/成功扱いにしない場合どこまで通るか'
            '第2〜4部の他11人(A/B/C班)の細かい伸ばし方: 大枠の解禁表はあるが各部前半・中盤・終盤の見せ場は未細分化'
        )
    }

    # 第8章 神話体系→キャラクターのマッピング(型・等級推移込み)
    MythologyMapping = @{
        Japanese = @(
            @{ Deity = 'スサノオ'; Character = '碇ゲンドウ'; Note = '準特級・荒神・天候複合操作・属性型・秘匿。暴走時は瞬間特級' }
            @{ Deity = '未完成の神'; Character = '碇シンジ'; Note = '測定不能・光・無属性純エネルギー射出・分類外' }
            @{ Deity = 'ツクヨミ'; Character = '綾波レイ'; Note = '参級→特級(続編)・月光干渉・霊格減速と鎮静・領域型' }
            @{ Deity = 'イザナミ'; Character = '碇ユイ'; Note = '壱級・黄泉の門・生死境界操作・領域型・秘匿' }
            @{ Deity = '雷神(ライジン)'; Character = '天宮ソラ'; Note = '参級→準特級・未制御・感情連動型の暴風雷・属性型・風神リョウとの連携で制御可能' }
            @{ Deity = '風神'; Character = '御堂リョウ'; Note = '肆級→壱級・神風・風圧と真空刃・属性型' }
            @{ Deity = '弁財天'; Character = '水瀬ミヤコ'; Note = '肆級→弐級・流水操作・水属性万能支援・属性型+領域型' }
            @{ Deity = '不動明王'; Character = '結城イサム'; Note = '弐級・不動の焔・拘束炎鎖・属性型+具現型' }
            @{ Deity = '翁神'; Character = '冬月コウゾウ'; Note = '壱級・結界維持・領域型・副学長' }
            @{ Deity = '天鈿女命'; Character = '伊吹マヤ'; Note = '参級・共感読取・情報型・研究科副主任' }
            @{ Deity = '韋駄天'; Character = '鷹山シンゴ'; Note = '準特級・高速体術と蹴り技・身体型・実技総合教官・七海モデル' }
            @{ Deity = 'アマテラス'; Character = '葛城ミサト'; Note = '準特級・陽光・属性型・戦闘科主任' }
            @{ Deity = '大国主命'; Character = '日向ソウタ'; Note = '肆級→壱級・縁結び・霊格回路接続支援・領域型' }
            @{ Deity = '武甕槌命'; Character = '蘆田ゲン'; Note = '準特級(通常)/瞬間特級(伍門時)・霊格回路脆化・全力数分・属性型+身体型(+門)・門の発見者・肆門到達可能・伍門二度到達・退役隠居' }
            @{ Deity = '菊理媛命'; Character = '氷室ユキノ'; Note = '弐級・和合の結界・領域型・寮監兼生活指導' }
            @{ Deity = '八幡神'; Character = '八雲シン'; Note = '準特級・弓と高速剣・身体型+属性型・NERV本部現役エース・五条悟モデル' }
            @{ Deity = '日本武尊'; Character = '桧山リュウジ'; Note = '壱級・草薙の盾焔・属性型+具現型・2010年第一次災厄で死亡' }
            @{ Deity = '木花咲耶姫'; Character = '美濃部カエデ'; Note = '元壱級・花咲の再生・領域型・第一次災厄で能力喪失・2026年時点41歳' }
        )
        Norse = @(
            @{ Deity = 'ブリュンヒルデ'; Character = '式波アスカ・ラングレー'; Note = '参級→特級(続編)・炎双剣フレイムツインソード・属性型+具現型' }
            @{ Deity = 'オーディン'; Character = '式波ソウイチ'; Note = '準特級・誓いの剣・大剣を具現・誓いに比例して出力が上がる概念型要素・具現型・欧州校副学長' }
            @{ Deity = 'フリッグ'; Character = '式波キョウコ・ツェッペリン'; Note = '準特級・運命視と戦場の祝福・情報型+領域型・欧州校学長' }
            @{ Deity = 'フェンリル'; Character = '鬼頭タクマ'; Note = '肆級→壱級・喰牙・霊格吸収・領域型' }
            @{ Deity = 'ヘイムダル'; Character = '相田ケンスケ'; Note = '肆級→壱級・千里眼・広域霊格索敵・情報型' }
            @{ Deity = 'トール'; Character = '本校上級生ゴウ'; Note = '弐級・落雷・遠距離雷撃・属性型' }
            @{ Deity = 'テュール'; Character = '(空き枠)' }
            @{ Deity = 'フレイヤ'; Character = '(空き枠)' }
            @{ Deity = 'ロキ'; Character = '(温存・未割当)' }
        )
        Greek = @(
            @{ Deity = 'ヘラクレス'; Character = '鈴原トウジ'; Note = '参級→準特級・剛拳・近接怪力特化・身体型' }
            @{ Deity = 'アトラス'; Character = 'カイン'; Note = '壱級・天蓋・重力操作・領域型' }
            @{ Deity = 'ヘスティア'; Character = '洞木ヒカリ'; Note = '肆級→壱級・炉の守り・範囲回復結界・領域型' }
            @{ Deity = 'ペルセポネ'; Character = '本校上級生ハルカ'; Note = '弐級・生死の境・魂係留・領域型' }
            @{ Deity = 'ダイダロス'; Character = '赤木リツコ'; Note = '弐級・解析投影・霊的データの立体可視化・情報型' }
            @{ Deity = 'オリンポス十二神'; Character = '(ゼーレ幹部に配分)' }
            @{ Deity = 'ティターン神族'; Character = '(第四部覚醒イベント)' }
        )
        Hindu    = @(@{ Deity = 'ヴィシュヌ'; Character = '本校上級生セイジ'; Note = '弐級・維持・状態固定・領域型' })
        Buddhist = @(
            @{ Deity = '弁財天'; Character = '水瀬ミヤコ'; Note = '(日本神話と重複掲載元)' }
            @{ Deity = '不動明王'; Character = '結城イサム' }
            @{ Deity = '韋駄天'; Character = '鷹山シンゴ' }
            @{ Deity = '毘沙門天'; Character = '甲斐シュウジ'; Note = '準特級・京都校学長・戦場俯瞰と軍勢強化・情報型+領域型' }
            @{ Deity = '泰山府君'; Character = '椎名ナギ'; Note = '壱級・京都校副学長・冥籍改竄・領域型' }
        )
        Chinese  = @(@{ Deity = '白澤'; Character = '志田シホ'; Note = '肆級→弐級・万象録・影霊情報の記録と分析・情報型' })
        Yokai    = @(
            @{ Deity = '玉藻前(九尾)'; Character = '真希波マリ'; Note = '準特級・狐火九尾・九体の狐霊使役・具現型+身体型。展開数増に伴い本体制限あり' }
            @{ Deity = '鞍馬天狗'; Character = '加持リョウジ'; Note = '壱級(通常)/準特級(本気時)・天狗隠し・霊的な隠蔽と隠密移動・領域型・情報科教官' }
        )
        Celtic   = @{
            Note    = '欧州校全員に配分。'
            Members = @(
                @{ Legend = 'アーサー王の継承者'; Character = 'エリザ'; Note = '壱級・エクスカリバー聖光剣・具現型+属性型' }
                @{ Legend = 'ランスロット'; Character = 'ニコラ'; Note = '壱級・湖光の槍・具現型' }
                @{ Legend = 'ガウェイン'; Character = 'ユーゴ'; Note = '弐級・太陽増幅・領域型' }
                @{ Legend = 'トリスタン'; Character = 'アンリ'; Note = '弐級・哀歌の弦・属性型' }
                @{ Legend = 'モルドレッド'; Character = 'クロエ'; Note = '参級→準特級・反逆の雷剣・属性型+具現型' }
                @{ Legend = 'パーシヴァル'; Character = 'マティス'; Note = '弐級・聖杯探査・情報型+領域型' }
                @{ Legend = 'ベディヴィエール'; Character = 'リーゼ'; Note = '弐級・銀腕・具現型' }
                @{ Legend = 'ブリギッド'; Character = 'エレナ(教員)'; Note = '弐級・三炉の知恵' }
                @{ Legend = 'マーリン'; Character = 'ヴィクトル(教員)'; Note = '壱級・千変の策' }
                @{ Legend = 'スカアハ'; Character = '神代レイカ'; Note = '準特級・槍術の極致・身体型+具現型・フリーランス' }
            )
        }
        Egyptian = @(
            @{ Deity = 'イシス'; Character = '本校上級生サヤ'; Note = '弐級・再生の手・領域型' }
            @{ Deity = 'バステト'; Character = '本校上級生ナツメ'; Note = '弐級・猫爪連撃・身体型' }
            @{ Deity = 'セト'; Character = '本校上級生レイジ'; Note = '参級・砂嵐・属性型' }
            @{ Deity = 'アヌビス'; Character = '(京都校に配置・死者の秤/弱点測定)' }
        )
        JapaneseHeroicSpirits = @(
            @{ Legend = '土方歳三'; Character = '桐生トシキ'; Note = '壱級・京都校3年・鉄の掟・概念型・身体型+領域型・生徒会長' }
            @{ Legend = '沖田総司'; Character = '鳳翔ハヤテ'; Note = '参級→準特級・京都校1年・三段突き・身体型+具現型・シンジのライバル枠' }
            @{ Legend = '斎藤一'; Character = '霧島シノブ'; Note = '弐級・京都校2年・無音の牙・身体型' }
            @{ Legend = '巴御前'; Character = '朝霧ユズハ'; Note = '弐級・京都校2年・薙刀連舞・具現型・ジュンペイのメインヒロイン' }
            @{ Legend = '弁慶'; Character = '神崎レン'; Note = '弐級・京都校2年・七つ道具・具現型・ユズハの幼馴染' }
            @{ Legend = '源義経'; Character = 'アベル'; Note = '壱級・京都校3年・八艘飛び・身体型' }
            @{ Legend = '安倍晴明'; Character = '篠宮ソウ'; Note = '肆級→壱級・京都校1年・式神使役・具現型' }
            @{ Legend = '鈴鹿御前'; Character = '早瀬アオイ'; Note = '肆級→壱級・京都校1年・三明の剣・具現型' }
            @{ Legend = '静御前'; Character = '瀬尾ミツキ'; Note = '肆級→弐級・京都校1年・神楽舞・具現型+領域型' }
            @{ Legend = '宮本武蔵'; Character = '黒田タケシ'; Note = '壱級・京都校戦闘教官・二天一流・身体型+具現型' }
            @{ Legend = '瀬織津姫'; Character = '白雪カナエ'; Note = '弐級・京都校支援教官・祓い清め・領域型' }
        )
        MappingNotes = '旧版でフリッグが式波キョウコと氷室ユキノの二名に割り当てられていた問題を解消済み(ユキノは菊理媛命に移動)。'
    }

    # 本校技一覧: A/B/C班12人の技体系
    TechniqueDesign = @{
        Policy = @(
            'メイン4人はわかりやすく・かっこよく・BLEACH風'
            '構成: 解号 / 通常技 / 奥義 / 最終形態 / 詠唱 / 決め台詞'
            '班固定の合体技・連携技は作らない。代わりに個別技が自然に噛み合うよう設計する'
            '第1部は「最強技披露」ではなく、戦い方の型を読者に覚えさせる部'
            '第2部以降で主力技・奥義・例外解禁を段階的に上げる'
        )
        UnlockByPart = @(
            @{ Arc = 'Arc1〜2'; Content = '解号+基本技' }
            @{ Arc = 'Arc3〜4'; Content = '主力技確立、個人の戦い方を読者に印象づける' }
            @{ Arc = 'Arc5〜6'; Content = '新技乱発は避け、既出技の応用と不穏さの演出' }
            @{ Arc = 'Arc7〜8'; Content = '主役級のみ一段上の火力・例外解禁' }
        )
        Part1EndPowerBalance = 'アスカ・レイ→弐級感。B班・C班主力→参級感。シンジ・ジュンペイ→異常な例外性を見せる。'
        BattleFlow = @('①ケンスケ or シホが見る', '②レイ or ヒカリ or ミヤコが場を整える', '③リョウが通す', '④アスカ/トウジ/ジュンペイ/シンジ/ソラ/タクマが決める')
    }

    ABand = @(
        @{ Character = '碇シンジ'; Host = '未完成の神'; Type = '分類外'; Kaigou = '照らせ――『無銘』'; Normal = '光矢 / 光輪 / 残光'; Ougi = '天穿光'; Final = '神なき黎明'; Role = '中核砲撃・直線貫通・切り札' }
        @{ Character = '鈴木ジュンペイ'; Host = '霊格ゼロ・五門'; Type = '分類外'; Kaigou = '開け――壱門'; Normal = '壱門・砕破 / 弐門・見切 / 参門・空打'; Ougi = '四門・天墜'; Final = '伍門・人門開放'; Role = '突破・肉弾決戦・極限到達' }
        @{ Character = '式波アスカ・ラングレー'; Host = 'ブリュンヒルデ'; Type = '属性+具現'; Kaigou = '燃えなさい――『戦乙女』'; Normal = '焔牙 / 緋輪 / 炎駆'; Ougi = '双焔断'; Final = '戦乙女・誓焔'; Role = '高速斬撃・前衛エース' }
        @{ Character = '綾波レイ'; Host = 'ツクヨミ'; Type = '領域'; Kaigou = '沈め――『月読』'; Normal = '月糸 / 白宵 / 静域'; Ougi = '月蝕'; Final = '月読九尾'; Role = '制圧・減速・鎮静' }
    )
    BBand = @(
        @{ Character = '鈴原トウジ'; Host = 'ヘラクレス'; Type = '身体'; Kaigou = '砕けろ――『ヘラクレス』'; Normal = '剛砕 / 轟踏 / 鉄牆'; Ougi = '巨神砕破'; Final = '神将覇'; Role = '前衛主砲・突破役' }
        @{ Character = '相田ケンスケ'; Host = 'ヘイムダル'; Type = '情報'; Kaigou = '見通せ――『ヘイムダル』'; Normal = '千里眼 / 霊格投影 / 弱点照準'; Ougi = '全視界・天眼'; Final = '虹橋視界'; Role = '索敵・解析・情報共有' }
        @{ Character = '洞木ヒカリ'; Host = 'ヘスティア'; Type = '領域'; Kaigou = '灯せ――『ヘスティア』'; Normal = '炉光 / 守護陣 / 炉焔弾'; Ougi = '聖炉護界'; Final = '永炉聖域'; Role = '回復・防衛・継戦維持' }
        @{ Character = '鬼頭タクマ'; Host = 'フェンリル'; Type = '領域'; Kaigou = '喰らえ――『フェンリル』'; Normal = '喰牙 / 侵蝕域 / 狼嗅'; Ougi = '大狼喰断'; Final = '終局大狼'; Role = '削り・吸収・長期戦エース' }
    )
    CBand = @(
        @{ Character = '御堂リョウ'; Host = '風神'; Type = '属性'; Kaigou = '奔れ――『風神』'; Normal = '風刃 / 真空圏 / 神風走'; Ougi = '天断風'; Final = '神風天一刀'; Role = '高速機動・斬撃制御・軌道修正' }
        @{ Character = '水瀬ミヤコ'; Host = '弁財天'; Type = '属性+領域'; Kaigou = '流れろ――『弁財天』'; Normal = '水流弾 / 流水壁 / 清流癒'; Ougi = '弁天瀑布'; Final = '天河万象'; Role = '万能支援・流れの制御' }
        @{ Character = '天宮ソラ'; Host = '雷神'; Type = '属性'; Kaigou = '暴れろ――『雷神』'; Normal = '雷哭 / 天鼓 / 嵐走'; Ougi = '雷神哭嵐'; Final = '統制雷神・一条'; Role = '範囲火力・瞬間殲滅' }
        @{ Character = '志田シホ'; Host = '白澤'; Type = '情報'; Kaigou = '記せ――『白澤』'; Normal = '万象録 / 記録展開 / 白澤眼'; Ougi = '万象開架'; Final = '白澤全録'; Role = '記録・蓄積・対策構築' }
    )

    # 被り防止チェック(第17章)
    OverlapCheck = @(
        '雷系: ゼウス(地形変動級・ゼーレ幹部)、バラキエル(上位堕天使級・グリゴリ)、ゴウ(トール・遠距離落雷・精密狙撃型)、ソラ(雷神・暴風雷・近〜中距離・未制御・感情連動型)、ライカ(バラキエルの器)。トールは「裁きの雷」で遠距離精密砲撃型、雷神は「荒ぶる雷」で近〜中距離暴風雷型。トールは狙撃銃、雷神は雷雨そのもの。'
        '炎系: アスカ(燃焼双剣)、イサム(拘束炎鎖) — 効果で差別化。'
        '光系: シンジ(無属性純光)、ミサト(太陽光)、エリザ(聖光剣)、アポロン(光矢) — 光源と性質で差別化。'
        '雷剣系: 蘆田ゲン(武甕槌命・雷剣+門併用・短時間)、ゴウ(トール・遠距離落雷) — 近接+門 vs 遠距離で差別化。'
        '槍系: 神代レイカ(スカアハ・具現槍+高速近接)、ニコラ(ランスロット・湖光の槍) — レイカは身体強化型の高速槍、ニコラは純具現型の技巧槍で差別化。'
        '弓系: 八雲シン(八幡神・霊格矢+高速剣の切替) — 単独。被りなし。'
        '全キャラクター間で能力の完全重複なし。'
    )

    OpenQuestions = @(
        'ジュンペイの第2部での参門使用回数(JunpeiFiveGates.OpenQuestions参照)'
        '四門への初接触の具体イベント(同上)'
        '第2〜4部の他11人(A/B/C班)の細かい伸ばし方の細分化(同上)'
    )
}
