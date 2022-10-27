teams = {
    "TES": ["Wayward", "Tian", "Knight", "JackeyLove", "Mark"],
    "EG": ["Impact", "Inspired", "Jojopyun", "Kaori", "Vulcan"],
    "100T": ["Ssumday", "Closer", "Abbedagge", "FBI", "huhi"],
    "LLL": ["Robo", "Croc", "Tinowns", "Brance", "Ceos"],
    "DFM": ["Evi", "Steal", "Yaharong", "Yutapon", "Harp"],
    "C9": ["Fudge", "Blaber", "Jensen", "Berserk", "Zven"],
    "SGB": ["Hasmed", "BeanJ", "Froggy", "Shogun", "Taki"],
    "GAM": ["Kiaya", "Levi", "Kati", "Sty1e", "Bie"],
    "ISG": ["ADD", "Grell", "Seiya", "Gavotto", "Jelly"],
    "IW": ["StarScreen", "Ferret", "Serin", "HolyPhoenix", "Farfetch"],
    "T1": ["Zeus", "Oner", "Faker", "Gumayusi", "Keria"],
    "JDG": ["369", "Kanavi", "Yagao", "Hope", "Missing"],
    "EDG": ["Flandre", "JieJie", "Scout", "Viper", "Meiko"],
    "RGE": ["Odoamne", "Malrang", "Larssen", "Comp", "Trymbi"],
    "RNG": ["Breath", "Wei", "xiaohu", "Gala", "Ming"],
    "DK": ["Nuguri", "Canyon", "ShowMaker", "deokdam", "Kellin"],
    "GEN": ["Doran", "Peanut", "Chovy", "Ruler", "Lehends"],
    "MAD": ["Armut", "Elyoya", "Nisqy", "UNFORGIVEN", "Kaiser"],
    "G2": ["BrokenBlade", "Jankos", "Caps", "Flakked", "Targamas"],
    "CHF": ["Topoon", "Arthur", "Tally", "Raes", "Aladoric"],

    "CFO1Shunn": ["Rest", "Gemini", "M1ssion", "Shunn", "Koala"],
    "CFO2Atlan": ["Rest", "Gemini", "M1ssion", "Atlan", "Koala"],

    "BYG1Likai": ["Likai", "HuSha", "Minji", "Wako", "Kino"],
    "BYG2Liang": ["Liang", "HuSha", "Minji", "Wako", "Kino"],

    "FNC1Hylissang": ["Wunder", "Razork", "Humanoid", "Upset", "Hylissang"],
    "FNC1Rhuckz": ["Wunder", "Razork", "Humanoid", "Upset", "Rhuckz"],

    "DRX1Pyosik": ["kingen", "Pyosik", "Zeka", "Deft", "Beryl"],
    "DRX2Juhan": ["kingen", "Juhan", "Zeka", "Deft", "Beryl"],
}

matches = [
    # Game type || Blue || Red || Date || Last seconds || Ban || Pick || K D A CS Vision || Gold || Damage
    #["Play_in",       "Bo1", 1, "ISG", "MAD", "red", "2022-09-29T22:00", 37*60+58,  ["Draven", "Aatrox", "Sylas", "Sqain", "Viktor", "Caitlyn", "Kalista", "Sejuani", "LeBlanc", "Azir"],    ["Ornn", "Graves", "Lissandra", "MissFortune", "Amumu", "Gnar", "Hecarim", "Taliyah", "Seraphine", "Leona"],    [1,7,5,235,67,5,6,7,84 ,119,3,2,7,290,42,3,2,5,327,43,0,5,7,32,112,3,2,10,293,61,7,2,10,74,61,8,4,8,256,30,3,1,11,299,33,1,3,9,36,110], [10975,14671,14444,15778,7414,17306,16432,17445,15755,9071],[7842,26855,12814,15958,5359,19480,16094,23358,13970,2661]],
    #["Play_in",       "Bo1", 1, "RNG", "ISG", "blue", "2022-10-02T02:00", 26*60+7,  ["Sejuani", "LeBlanc", "Renekton", "Amumu", "Azir", "Kalista", "Lissandra", "Sylas", "Alistar", "Leona"], ["Aatrox", "Graves", "Syndra", "Kaisa", "Sett", "Teemo", "Lillia", "Sion", "MissFortune", "Nautilus"], [6,3,10,222,21,6,0,15,213,75,6,1,13,220,23,8,1,13,259,27,7,1,17,31,66,1,9,3,145,29,2,6,3,175,24,1,4,1,215,25,1,7,2,201,15,1,7,3,28,43], [12766,13881,12686,14105,9540,7443,9181,8646,8755,5491], [23166,19484,18604,23820,9388,13473,9537,8690,11375,4294]],
    #["Groups",        "Bo1", 1, "RNG", "GEN", "red",  "2022-10-17T02:00", 27*60+19, ["Caitlyn", "Yummi", "Nami", "Sejuani", "Poppy", "Aatrox", "Lissandra", "Fiora", "Graves", "Rell"],    ["Gangplank", "Maokai", "Akali", "Tristana", "Blitzcrank", "Renekton", "Trundle", "Sylas", "Aphelios", "Renata Glasc"], [5,1,0,240,22,0,3,4,124,26,0,3,2,213,17,0,4,3,246,20,1,4,4,33,57,1,3,4,226,24,2,0,7,150,41,6,0,1,249,30,5,1,10,227,33,1,2,9,14,84], [13161,7790,8494,9716,5935,10109,9361,12342,12474,6930],[18148,12365,17541,8625,4645,6244,7691,20559,21320,5321]],
    ["QuarterFinals", "Bo5", 1, "JDG", "RGE", "blue", "2022-10-20T23:00", 29*60+19, ["Ornn", "Maokai", "Caitlyn", "JarvanIV", "Gnar", "Aatrox", "Yummi", "Sylas", "Viktor", "LeBlanc"],      ["Gragas", "Graves", "Taliyah", "Aphelios", "Lulu", "Renekton", "Vi", "Azir", "Lucian", "Nami"],                [5,1,4,201,24,4,1,5,270,105,1,1,7,253,33,3,2,5,252,49,0,1,10,9,73,1,4,1,227,21,0,3,4,141,44,2,2,1,275,26,2,0,1,257,29,1,4,1,18,60],  [11338,13950,11580,12278,7173,9823,8050,11322,11311,6369], [19634,19258,10723,14427,3732,13323,5455,17404,11208,5288]],
    ["QuarterFinals", "Bo5", 2, "RGE", "JDG", "red", "2022-10-20T23:00", 29*60+39,  ["Graves", "Sejuani", "Fiora", "Vi", "Gragas", "Caitlyn", "Yummi", "Aatrox", "Viktor", "JarvanIV"],      ["Maokai", "Lee Sin", "Azir", "Lucian", "Nami", "Gwen", "Viego", "Sylas", "Aphelios", "Lulu"],                   [0,2,5,214,22,2,3,4,132,80, 1,0,2,286,30,3,3,0,260,27,0,2,4,12,60,0,3,4,263,31,4,2,2,182,42,1,1,4,268,34,4,0,3,312,43,1,0,6,14,90],  [9690,8657,11829,11874,5991,11944,11373,12303,15039,8220], [12634,7711,19858,8163,5187,18552,8548,11081,13586,4202]],
    ["QuarterFinals", "Bo5", 3, "RGE", "JDG", "red", "2022-10-20T23:00", 33*60+5,   ["Graves", "Sejuani", "Aphelios", "Fiora", "Vi", "Caitlyn", "Yummi", "Aatrox", "Azir", "Viktor"],        ["Maokai", "Lee Sin", "LeBlanc", "Kalista", "Soraka", "Ornn", "Viego", "Sylas", "Lucian", "Nami"],               [0,3,3,186,24,0,3,3,168,98,5,0,1,275,27,5,4,1,319,27,0,4,7,15,58,2,1,9,243,39,5,2,3,223,65,3,1,6,246,22,2,4,10,279,52,2,2,9,25,69],  [8885,8934,13370,13811,7262,11939,12986,12408,13344,7904], [14009,9116,26303,14696,10160,25221,13077,20680,24490,8795]],
    ["QuarterFinals", "Bo5", 1, "T1",  "RNG", "blue", "2022-10-21T23:00", 38*60+9,  ["Lissandra", "Fiora", "Jax", "Galio", "Taliyah", "Yummi", "Caitlyn", "Aatrox", "Sylas", "LeBlanc"],     ["Camille", "Graves", "Viktor", "Ashe", "Heimerdinger", "Renekton", "Viego", "Akali", "Aphelios", "Nautilus"],  [5,2,7,336,36,4,3,10,320,134,3,3,7,326,36,3,0,6,335,59,0,2,9,25,101,1,5,3,336,25,6,3,3,175,69,1,3,7,333,28,2,1,3,451,38,0,3,4,35,91],[18264,17819,15753,15181,9056,13379,11989,13614,17505,7139],[21585,15496,24437,12040,8493,12185,10410,14353,16592,1885]],
    ["QuarterFinals", "Bo5", 2, "RNG", "T1",  "red", "2022-10-21T23:00", 41*60+59,  ["Caitlyn", "Graves", "LeBlanc", "Lucian", "Heimerdinger", "Lissandra", "Aatrox", "Yummi", "Aphelios", "Tristana"], ["Fiora", "Sejuani", "Sylas", "Kaisa", "Nautilus", "Jayce", "Viego", "Akali", "Xayah", "Renata Glasc"], [7,2,3,404,64,3,2,10,199,75,1,6,3,375,32,2,1,2,461,58,1,2,3,45,154,0,8,10,318,32,3,3,4,179,64,3,2,6,329,31,7,0,4,504,60,0,1,11,23,102],[19691,13371,16323,18803,8683,15299,14136,16645,23136,10372],[18119,13357,17841,17325,4075,30493,9931,26288,30760,5333]],
    ["QuarterFinals", "Bo5", 3, "RNG", "T1",  "red", "2022-10-21T23:00", 26*60+32,  ["Caitlyn", "Graves", "Camille", "Renata Glasc", "Thresh", "Yummi", "Lissandra", "Fiora", "Kaisa", "Lucian"], ["Aatrox", "Vi", "Sylas", "Aphelios", "Soraka", "Yone", "Sejuani", "Akali", "Varus", "Tahm Kench"],        [2,7,1,202,15,0,7,3,109,28,2,5,3,193,23,5,3,1,240,26,1,5,5,8,58,8,4,7,220,22,3,1,17,123,35,7,3,7,193,18,8,2,10,247,28,1,1,16,39,56], [9160,6569,9809,11082,6069,13132,10404,11096,13312,7694],[10738,5532,15073,16499,3933,20691,13640,20300,17552,6747]],
    ["QuarterFinals", "Bo5", 1, "GEN", "DK",  "blue", "2022-10-22T23:00", 25*60+53, ["Graves", "Sejuani", "Caitlyn", "Camille", "Viego", "Aatrox", "Sylas", "Azir", "Viktor", "Vi"],      ["Renekton", "Maokai", "Ryze", "MissFortune", "Yummi", "Gragas", "Kayn", "Lissandra", "Lucian", "Nami"],    [1,3,9,201,26,1,1,14,123,37,11,3,3,233,36,4,0,8,274,43,0,0,14,14,59,2,5,2,192,22,3,3,4,194,31,0,4,5,188,17,2,3,1,255,15,0,2,5,5,48],  [10384,8084,13792,12165,6836,9417,10019,8979,9192,5191],[10842,10464,14864,17862,5562,12062,15556,9792,8957,6009]],
    ["QuarterFinals", "Bo5", 2, "DK",  "GEN", "red",  "2022-10-22T23:00", 42*60+20, ["Sylas", "Fiora", "Aphelios", "Viego", "Ahri", "Graves", "Aatrox", "Sivir", "Renekton", "Kayn"],     ["Gragas", "Wukong", "Azir", "Lucian", "Nami", "Camille", "Sejuani", "Yone", "MissFortune", "Yummi"],       [2,3,7,265,28,2,5,5,159,55,3,3,5,327,50,2,2,6,380,54,2,4,8,14,114,3,2,3,296,65,0,3,13,192,81,7,0,5,425,55,6,2,5,434,56,1,4,12,7,100], [13293,11446,15885,18045,9211,14922,12199,19814,19233,9507],[17115,11907,30676,23870,7610,17212,15440,24963,25181,7815]],
    ["QuarterFinals", "Bo5", 3, "DK",  "GEN", "blue", "2022-10-22T23:00", 26*60+7,  ["Sylas", "Fiora", "Yummi", "Renekton", "Vi", "Graves", "Aatrox", "Caitlyn", "Lissandra", "Camille"], ["Sejuani", "Viego", "Swain", "Aphelios", "Lulu", "Maokai", "Poppy", "Azir", "Lucian", "Nami"],             [4,1,8,211,20,4,1,5,150,45,3,0,9,236,17,4,0,5,243,28,0,0,12,12,45,0,3,1,200,17,1,2,0,128,32,1,4,0,258,29,0,2,2,240,41,0,4,2,4,52], [11494,9599,10785,11430,6886,7775,7137,10236,9599,4967],[16370,7951,17826,11627,6395,10329,5450,15516,12143,3840]],
    ["QuarterFinals", "Bo5", 4, "GEN", "DK",  "red", "2022-10-22T23:00", 24*60+29,  ["Graves", "Caitlyn", "Kayn", "Taliyah", "Ornn", "Sylas", "Aatrox", "Yummi", "Thresh", "Camille"],    ["Gnar", "Sejuani", "Azir", "Jinx", "Lulu", "Renekton", "Viego", "LeBlanc", "Aphelios", "Renata Glasc"],    [1,2,1,198,20,0,5,2,102,29,1,1,1,233,22,0,1,1,243,35,0,4,2,16,47,2,1,3,216,16,4,1,5,153,43,3,0,4,198,51,4,0,3,255,27,0,0,8,9,87], [9016,5897,8654,8527,5011,10897,10474,10033,11639,6752],[8876,4310,9304,6404,2671,7184,8487,12852,10771,3609]],
    ["QuarterFinals", "Bo5", 5, "GEN", "DK",  "blue", "2022-10-22T23:00", 44*60+51, ["Graves", "Viego", "Caitlyn", "Nidalee", "Karthus", "Sylas", "Aatrox", "Yummi", "Yone", "Vi"],       ["Gnar", "Sejuani", "Viktor", "Lucian", "Nami", "Renekton", "Kayn", "Syndra", "Aphelios", "Lulu"],          [1,2,9,336,58,4,2,7,193,75,7,2,6,383,72,6,1,6,463,88,0,4,12,14,124,4,4,13,341,52,3,3,6,227,77,2,5,7,300,46,2,3,2,466,56,0,3,5,10,120],[16502,13702,19450,22301,9690,16156,14271,14500,19210,8607],[24667,12372,36152,39636,8499,16818,14243,24604,23877,4878]],
    ["QuarterFinals", "Bo5", 1, "DRX1Pyosik", "EDG", "blue", "2022-10-23T23:00", 35*60,    ["Lucian", "Ryze", "Sejuani", "Varus", "Ezreal", "Yummi", "Caitlyn", "Aatrox", "Sylas", "Viktor"],    ["Fiora", "Graves", "Orianna", "Ashe", "Heimerdinger", "Kennen", "Lee Sin", "Azir", "Sivir", "Soraka"],               [3,2,1,282,40,1,3,2,222,125,3,2,5,338,39,1,4,3,273,47,1,4,4,37,99,4,1,6,269,24,0,2,9,198,50,9,1,6,292,33,2,1,9,329,43,0,4,9,12,74], [13966,10793,14648,12235,8701,13488,11146,15427,14818,7530], [11770,7215,16898,15169,19648,22887,8894,32135,16014,3640]],
    ["QuarterFinals", "Bo5", 2, "EDG", "DRX1Pyosik", "red",  "2022-10-23T23:00", 42*60+27, ["Lucian", "Fiora", "Renekton", "Kaisa", "Soraka", "Yummi", "Caitlyn", "Maokai", "Ashe", "Jinx"],     ["Aatrox", "Poppy", "Akali", "Ezreal", "Heimerdinger", "Jax", "Sejuani", "Azir", "Aphelios", "Lulu"],                 [3,4,5,293,43,1,1,5,188,77,2,2,2,420,45,3,4,4,417,62,2,7,4,33,130,5,0,2,349,37,2,4,9,170,60,3,2,3,361,36,8,2,4,425,55,0,3,10,31,131],  [15819,12468,17794,20614,10741,17195,11999,18807,20343,9946],[21699,10206,14685,43874,21878,21927,15532,38775,43097,5246]],
    ["QuarterFinals", "Bo5", 3, "DRX1Pyosik", "EDG", "blue", "2022-10-23T23:00", 42*60,    ["Lucian", "Azir", "Sejuani", "Aphelios", "Lulu", "Yummi", "Caitlyn", "Heimerdinger", "Ashe", "Ezreal"], ["Aatrox", "Kindred", "Sylas", "Draven", "Soraka", "Fiora", "Graves", "Viktor", "Kalista", "Renata Glasc"],        [1,2,3,326,35,1,1,6,289,133,2,2,5,354,39,5,1,2,394,42,0,2,8,26,100,1,1,1,386,38,2,2,4,293,174,2,1,3,362,46,3,2,1,380,54,0,3,3,21,107], [14928,14741,16460,21243,8994,15399,14686,16702,16406,7875], [13678,20042,13341,22406,6140,11495,14898,36236,20430,3855]],
    ["QuarterFinals", "Bo5", 4, "EDG", "DRX1Pyosik", "red",  "2022-10-23T23:00", 38*60+42, ["Sylas", "Akali", "Caitlyn", "Heimerdinger", "Soraka", "Lucian", "Viktor", "Yummi", "Aphelios", "Draven"], ["Aatrox", "Lee Sin", "LeBlanc", "Varus", "Renata Glasc", "Camille", "Sejuani", "Azir", "Kalista", "Ashe"],     [2,3,1,278,32,1,6,7,193,57,6,4,4,279,65,2,6,4,357,50,0,3,7,56,115,6,5,6,275,54,3,1,14,201,67,6,1,9,357,68,2,1,9,330,78,1,3,12,32,154], [12663,10625,15248,14510,7706,16234,12884,16964,16009,9961], [23076,9461,37088,27088,4759,27535,16939,31002,17016,17137]],
    ["QuarterFinals", "Bo5", 5, "EDG", "DRX1Pyosik", "blue", "2022-10-23T23:00", 37*60+53, ["Heimerdinger", "Aatrox", "Caitlyn", "Kalista", "Varus", "Lucian", "Azir", "Yummi", "Renekton", "Gangplank"],["Jax", "Sejuani", "Akali", "Aphelios", "Lulu", "Fiora", "Viego", "Sylas", "Ezreal", "Karma"],                [0,2,4,318,28,1,4,6,196,78,3,6,2,256,28,2,3,3,396,50,1,3,4,18,90,2,1,3,346,39,4,2,7,158,52,2,4,7,310,41,2,1,7,403,53,0,1,14,30,113],[14272,11303,12449,16806,7954,15216,11295,17847,18372,10664],[17932,8918,21075,24158,2431,16129,10874,30002,36504,12639]],
]

with open("matches.txt", 'w', encoding='UTF-8') as f:
    for match in matches:
        team1 = match[3]
        team2 = match[4]
        if team1 == "DRX1Pyosik":
            team1  = "DRX"
        if team2 == "DRX1Pyosik":
            team2 = "DRX"
        f.write("create (n:Match :" + match[0] + " " + "{mode: \"" + match[1] + "\", number_of_rounds: " + str(match[2]) + ", win:\"" + match[5] + "\", date_time: datetime(\"" + match[6] + "\"), duration: " + str(match[7]) + "});\n")
        f.write("match (m:Match :" + match[0] + " " + "{mode: \"" + match[1] + "\", number_of_rounds: " + str(match[2]) + ", win:\"" + match[5] + "\", date_time: datetime(\"" + match[6] + "\"), duration: " + str(match[7]) + "}),\n")
        f.write("(t_blue:Team {name:\"" + team1 + "\"}), \n")
        f.write("(t_red:Team {name:\"" + team2 + "\"}) \n")
        f.write("create (t_blue) - [:FIGHT_IN {side: \"blue\"}] -> (m), (t_red) - [:FIGHT_IN {side: \"red\"}] -> (m);\n\n")

        idx = 0
        f.write("match\n")
        for member in teams[match[3]]:
            f.write("(" + chr(idx + 97) + ": Player {name: \"" + member + "\"}),\n")
            idx += 1
        for member in teams[match[4]]:
            f.write("(" + chr(idx + 97) + ": Player {name: \"" + member + "\"}),\n")
            idx += 1
        f.write("(m:Match :" + match[0] + " " + "{mode: \"" + match[1] + "\", number_of_rounds: " + str(match[2]) + ", win:\"" + match[5] + "\", date_time: datetime(\"" + match[6] + "\"), duration: " + str(match[7]) + "})\ncreate\n")

        idx = 0
        while idx < 9:
            f.write("(" + chr(idx + 97) + ") - [:ATTEND {ban: \"" + match[8][idx] + "\", pick: \"" + match[9][idx] + "\", kill: " + str(match[10][idx * 5 + 0]) + ", death: " + str(match[10][idx * 5 + 1]) + ", assistance: " + str(match[10][idx * 5 + 2]) + ", cs: " + str(match[10][idx * 5 + 3]) + ", vision: " + str(match[10][idx * 5 + 4]) + ", gold: " + str(match[11][idx]) + ", damage: " + str(match[12][idx]) + "}] -> (m), \n")
            idx += 1

        f.write("(j) - [:ATTEND {ban: \"" + match[8][idx] + "\", pick: \"" + match[9][idx] + "\", kill: " + str(match[10][idx * 5 + 0]) + ", death: " + str(match[10][idx * 5 + 1]) + ", assistance: " + str(match[10][idx * 5 + 2]) + ", cs: " + str(match[10][idx * 5 + 3]) + ", vision: " + str(match[10][idx * 5 + 4]) + ", gold: " + str(match[11][idx]) + ", damage: " + str(match[12][idx]) + "}] -> (m);\n\n\n")





