create (n:Team {name: 'JDG' , isSurvive: true, league: "LPL"});
create (n:Team {name: 'TES' , isSurvive: false, league: "LPL"});
create (n:Team {name: 'EDG' , isSurvive: true, league: "LPL"});
create (n:Team {name: 'RNG' , isSurvive: false, league: "LPL"});
create (n:Team {name: 'GEN' , isSurvive: true, league: "LCK"});
create (n:Team {name: 'T1'  , isSurvive: true, league: "LCK"});
create (n:Team {name: 'DK'  , isSurvive: false, league: "LCK"});
create (n:Team {name: 'DRX' , isSurvive: true, league: "LCK"});
create (n:Team {name: 'G2'  , isSurvive: false, league: "LEC"});
create (n:Team {name: 'C9'  , isSurvive: false, league: "LCS"});
create (n:Team {name: 'RGE' , isSurvive: false, league: "LEC"});
create (n:Team {name: '100T', isSurvive: false, league: "LCS"});
create (n:Team {name: 'FNC' , isSurvive: false, league: "LEC"});
create (n:Team {name: 'MAD' , isSurvive: false, league: "LEC"});
create (n:Team {name: 'LLL' , isSurvive: false, league: "CBLOL"});
create (n:Team {name: 'CFO' , isSurvive: false, league: "PCS"});
create (n:Team {name: 'CHF' , isSurvive: false, league: "LCO"});
create (n:Team {name: 'EG'  , isSurvive: false, league: "LCS"});
create (n:Team {name: 'SGB' , isSurvive: false, league: "VCS"});
create (n:Team {name: 'BYG' , isSurvive: false, league: "PCS"});
create (n:Team {name: 'IW'  , isSurvive: false, league: "TCL"});
create (n:Team {name: 'GAM' , isSurvive: false, league: "VCS"});
create (n:Team {name: 'ISG' , isSurvive: false, league: "LLA"});
create (n:Team {name: 'DFM' , isSurvive: false, league: "LJL"});

match(n: Team {league: "LPL"}) set n.region = "China";
match(n: Team {league: "LCK"}) set n.region = "South Korea";
match(n: Team {league: "LEC"}) set n.region = "Europe";
match(n: Team {league: "LCS"}) set n.region = "North America";
match(n: Team {league: "PCS"}) set n.region = "TW/HK/MO/SEA";
match(n: Team {league: "VCS"}) set n.region = "Vietnam";
match(n: Team {league: "CBLOL"}) set n.region = "Brazil";
match(n: Team {league: "LJL"}) set n.region = "Japan";
match(n: Team {league: "LLA"}) set n.region = "Latin America";
match(n: Team {league: "LCO"}) set n.region = "Oceania";
match(n: Team {league: "TCL"}) set n.region = "Turkey";

create(n: Player {name: "Zeus", role: "Top"});
match (n: Player {name: "Zeus"}), (t:Team {name: "T1"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Oner", role: "Jungle"});
match (n: Player {name: "Oner"}), (t:Team {name: "T1"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Faker", role: "Mid"});
match (n: Player {name: "Faker"}), (t:Team {name: "T1"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Gumayusi", role: "ADC"});
match (n: Player {name: "Gumayusi"}), (t:Team {name: "T1"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Keria", role: "Sup"});
match (n: Player {name: "Keria"}), (t:Team {name: "T1"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "369", role: "Top"});
match (n: Player {name: "369"}), (t:Team {name: "JDG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Kanavi", role: "Jungle"});
match (n: Player {name: "Kanavi"}), (t:Team {name: "JDG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Yagao", role: "Mid"});
match (n: Player {name: "Yagao"}), (t:Team {name: "JDG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Hope", role: "ADC"});
match (n: Player {name: "Hope"}), (t:Team {name: "JDG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Missing", role: "Sup"});
match (n: Player {name: "Missing"}), (t:Team {name: "JDG"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Flandre", role: "Top"});
match (n: Player {name: "Flandre"}), (t:Team {name: "EDG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "JieJie", role: "Jungle"});
match (n: Player {name: "JieJie"}), (t:Team {name: "EDG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Scout", role: "Mid"});
match (n: Player {name: "Scout"}), (t:Team {name: "EDG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Viper", role: "ADC"});
match (n: Player {name: "Viper"}), (t:Team {name: "EDG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Meiko", role: "Sup"});
match (n: Player {name: "Meiko"}), (t:Team {name: "EDG"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Odoamne", role: "Top"});
match (n: Player {name: "Odoamne"}), (t:Team {name: "RGE"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Malrang", role: "Jungle"});
match (n: Player {name: "Malrang"}), (t:Team {name: "RGE"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Larssen", role: "Mid"});
match (n: Player {name: "Larssen"}), (t:Team {name: "RGE"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Comp", role: "ADC"});
match (n: Player {name: "Comp"}), (t:Team {name: "RGE"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Trymbi", role: "Sup"});
match (n: Player {name: "Trymbi"}), (t:Team {name: "RGE"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Breath", role: "Top"});
match (n: Player {name: "Breath"}), (t:Team {name: "RNG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Wei", role: "Jungle"});
match (n: Player {name: "Wei"}), (t:Team {name: "RNG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "xiaohu", role: "Mid"});
match (n: Player {name: "xiaohu"}), (t:Team {name: "RNG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Gala", role: "ADC"});
match (n: Player {name: "Gala"}), (t:Team {name: "RNG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Ming", role: "Sup"});
match (n: Player {name: "Ming"}), (t:Team {name: "RNG"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Nuguri", role: "Top"});
match (n: Player {name: "Nuguri"}), (t:Team {name: "DK"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Canyon", role: "Jungle"});
match (n: Player {name: "Canyon"}), (t:Team {name: "DK"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "ShowMaker", role: "Mid"});
match (n: Player {name: "ShowMaker"}), (t:Team {name: "DK"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "deokdam", role: "ADC"});
match (n: Player {name: "deokdam"}), (t:Team {name: "DK"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Kellin", role: "Sup"});
match (n: Player {name: "Kellin"}), (t:Team {name: "DK"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Doran", role: "Top"});
match (n: Player {name: "Doran"}), (t:Team {name: "GEN"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Peanut", role: "Jungle"});
match (n: Player {name: "Peanut"}), (t:Team {name: "GEN"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Chovy", role: "Mid"});
match (n: Player {name: "Chovy"}), (t:Team {name: "GEN"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Ruler", role: "ADC"});
match (n: Player {name: "Ruler"}), (t:Team {name: "GEN"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Lehends", role: "Sup"});
match (n: Player {name: "Lehends"}), (t:Team {name: "GEN"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "kingen", role: "Top"});
match (n: Player {name: "kingen"}), (t:Team {name: "DRX"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Pyosik", role: "Jungle"});
match (n: Player {name: "Pyosik"}), (t:Team {name: "DRX"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Zeka", role: "Mid"});
match (n: Player {name: "Zeka"}), (t:Team {name: "DRX"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Deft", role: "ADC"});
match (n: Player {name: "Deft"}), (t:Team {name: "DRX"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Beryl", role: "Sup"});
match (n: Player {name: "Beryl"}), (t:Team {name: "DRX"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Juhan", role: "Jungle"});
match (n: Player {name: "Juhan"}), (t:Team {name: "DRX"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Wunder", role: "Top"});
match (n: Player {name: "Wunder"}), (t:Team {name: "FNC"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Razork", role: "Jungle"});
match (n: Player {name: "Razork"}), (t:Team {name: "FNC"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Humanoid", role: "Mid"});
match (n: Player {name: "Humanoid"}), (t:Team {name: "FNC"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Upset", role: "ADC"});
match (n: Player {name: "Upset"}), (t:Team {name: "FNC"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Hylissang", role: "Sup"});
match (n: Player {name: "Hylissang"}), (t:Team {name: "FNC"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Rhuckz", role: "Sup"});
match (n: Player {name: "Rhuckz"}), (t:Team {name: "FNC"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Armut", role: "Top"});
match (n: Player {name: "Armut"}), (t:Team {name: "MAD"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Elyoya", role: "Jungle"});
match (n: Player {name: "Elyoya"}), (t:Team {name: "MAD"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Nisqy", role: "Mid"});
match (n: Player {name: "Nisqy"}), (t:Team {name: "MAD"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "UNFORGIVEN", role: "ADC"});
match (n: Player {name: "UNFORGIVEN"}), (t:Team {name: "MAD"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Kaiser", role: "Sup"});
match (n: Player {name: "Kaiser"}), (t:Team {name: "MAD"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "BrokenBlade", role: "Top"});
match (n: Player {name: "BrokenBlade"}), (t:Team {name: "G2"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Jankos", role: "Jungle"});
match (n: Player {name: "Jankos"}), (t:Team {name: "G2"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Caps", role: "Mid"});
match (n: Player {name: "Caps"}), (t:Team {name: "G2"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Flakked", role: "ADC"});
match (n: Player {name: "Flakked"}), (t:Team {name: "G2"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Targamas", role: "Sup"});
match (n: Player {name: "Targamas"}), (t:Team {name: "G2"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Rest", role: "Top"});
match (n: Player {name: "Rest"}), (t:Team {name: "CFO"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Gemini", role: "Jungle"});
match (n: Player {name: "Gemini"}), (t:Team {name: "CFO"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "M1ssion", role: "Mid"});
match (n: Player {name: "M1ssion"}), (t:Team {name: "CFO"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Shunn", role: "ADC"});
match (n: Player {name: "Shunn"}), (t:Team {name: "CFO"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Koala", role: "Sup"});
match (n: Player {name: "Koala"}), (t:Team {name: "CFO"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Atlan", role: "ADC"});
match (n: Player {name: "Atlan"}), (t:Team {name: "CFO"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Wayward", role: "Top"});
match (n: Player {name: "Wayward"}), (t:Team {name: "TES"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Tian", role: "Jungle"});
match (n: Player {name: "Tian"}), (t:Team {name: "TES"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Knight", role: "Mid"});
match (n: Player {name: "Knight"}), (t:Team {name: "TES"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "JackeyLove", role: "ADC"});
match (n: Player {name: "JackeyLove"}), (t:Team {name: "TES"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Mark", role: "Sup"});
match (n: Player {name: "Mark"}), (t:Team {name: "TES"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Impact", role: "Top"});
match (n: Player {name: "Impact"}), (t:Team {name: "EG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Inspired", role: "Jungle"});
match (n: Player {name: "Inspired"}), (t:Team {name: "EG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Jojopyun", role: "Mid"});
match (n: Player {name: "Jojopyun"}), (t:Team {name: "EG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Kaori", role: "ADC"});
match (n: Player {name: "Kaori"}), (t:Team {name: "EG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Vulcan", role: "Sup"});
match (n: Player {name: "Vulcan"}), (t:Team {name: "EG"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Ssumday", role: "Top"});
match (n: Player {name: "Ssumday"}), (t:Team {name: "100T"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Closer", role: "Jungle"});
match (n: Player {name: "Closer"}), (t:Team {name: "100T"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Abbedagge", role: "Mid"});
match (n: Player {name: "Abbedagge"}), (t:Team {name: "100T"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "FBI", role: "ADC"});
match (n: Player {name: "FBI"}), (t:Team {name: "100T"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "huhi", role: "Sup"});
match (n: Player {name: "huhi"}), (t:Team {name: "100T"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Robo", role: "Top"});
match (n: Player {name: "Robo"}), (t:Team {name: "LLL"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Croc", role: "Jungle"});
match (n: Player {name: "Croc"}), (t:Team {name: "LLL"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Tinowns", role: "Mid"});
match (n: Player {name: "Tinowns"}), (t:Team {name: "LLL"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Brance", role: "ADC"});
match (n: Player {name: "Brance"}), (t:Team {name: "LLL"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Ceos", role: "Sup"});
match (n: Player {name: "Ceos"}), (t:Team {name: "LLL"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Evi", role: "Top"});
match (n: Player {name: "Evi"}), (t:Team {name: "DFM"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Steal", role: "Jungle"});
match (n: Player {name: "Steal"}), (t:Team {name: "DFM"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Yaharong", role: "Mid"});
match (n: Player {name: "Yaharong"}), (t:Team {name: "DFM"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Yutapon", role: "ADC"});
match (n: Player {name: "Yutapon"}), (t:Team {name: "DFM"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Harp", role: "Sup"});
match (n: Player {name: "Harp"}), (t:Team {name: "DFM"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Fudge", role: "Top"});
match (n: Player {name: "Fudge"}), (t:Team {name: "C9"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Blaber", role: "Jungle"});
match (n: Player {name: "Blaber"}), (t:Team {name: "C9"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Jensen", role: "Mid"});
match (n: Player {name: "Jensen"}), (t:Team {name: "C9"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Berserk", role: "ADC"});
match (n: Player {name: "Berserk"}), (t:Team {name: "C9"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Zven", role: "Sup"});
match (n: Player {name: "Zven"}), (t:Team {name: "C9"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Hasmed", role: "Top"});
match (n: Player {name: "Hasmed"}), (t:Team {name: "SGB"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "BeanJ", role: "Jungle"});
match (n: Player {name: "BeanJ"}), (t:Team {name: "SGB"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Froggy", role: "Mid"});
match (n: Player {name: "Froggy"}), (t:Team {name: "SGB"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Shogun", role: "ADC"});
match (n: Player {name: "Shogun"}), (t:Team {name: "SGB"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Taki", role: "Sup"});
match (n: Player {name: "Taki"}), (t:Team {name: "SGB"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Kiaya", role: "Top"});
match (n: Player {name: "Kiaya"}), (t:Team {name: "GAM"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Levi", role: "Jungle"});
match (n: Player {name: "Levi"}), (t:Team {name: "GAM"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Kati", role: "Mid"});
match (n: Player {name: "Kati"}), (t:Team {name: "GAM"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Sty1e", role: "ADC"});
match (n: Player {name: "Sty1e"}), (t:Team {name: "GAM"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Bie", role: "Sup"});
match (n: Player {name: "Bie"}), (t:Team {name: "GAM"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "ADD", role: "Top"});
match (n: Player {name: "ADD"}), (t:Team {name: "ISG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Grell", role: "Jungle"});
match (n: Player {name: "Grell"}), (t:Team {name: "ISG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Seiya", role: "Mid"});
match (n: Player {name: "Seiya"}), (t:Team {name: "ISG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Gavotto", role: "ADC"});
match (n: Player {name: "Gavotto"}), (t:Team {name: "ISG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Jelly", role: "Sup"});
match (n: Player {name: "Jelly"}), (t:Team {name: "ISG"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Likai", role: "Top"});
match (n: Player {name: "Likai"}), (t:Team {name: "BYG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "HuSha", role: "Jungle"});
match (n: Player {name: "HuSha"}), (t:Team {name: "BYG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Minji", role: "Mid"});
match (n: Player {name: "Minji"}), (t:Team {name: "BYG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Wako", role: "ADC"});
match (n: Player {name: "Wako"}), (t:Team {name: "BYG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Kino", role: "Sup"});
match (n: Player {name: "Kino"}), (t:Team {name: "BYG"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Liang", role: "Top"});
match (n: Player {name: "Liang"}), (t:Team {name: "BYG"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "StarScreen", role: "Top"});
match (n: Player {name: "StarScreen"}), (t:Team {name: "IW"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Ferret", role: "Jungle"});
match (n: Player {name: "Ferret"}), (t:Team {name: "IW"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Serin", role: "Mid"});
match (n: Player {name: "Serin"}), (t:Team {name: "IW"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "HolyPhoenix", role: "ADC"});
match (n: Player {name: "HolyPhoenix"}), (t:Team {name: "IW"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Farfetch", role: "Sup"});
match (n: Player {name: "Farfetch"}), (t:Team {name: "IW"}) create (n)-[:IS_MEMBER_OF]->(t);

create(n: Player {name: "Topoon", role: "Top"});
match (n: Player {name: "Topoon"}), (t:Team {name: "CHF"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Arthur", role: "Jungle"});
match (n: Player {name: "Arthur"}), (t:Team {name: "CHF"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Tally", role: "Mid"});
match (n: Player {name: "Tally"}), (t:Team {name: "CHF"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Raes", role: "ADC"});
match (n: Player {name: "Raes"}), (t:Team {name: "CHF"}) create (n)-[:IS_MEMBER_OF]->(t);
create(n: Player {name: "Aladoric", role: "Sup"});
match (n: Player {name: "Aladoric"}), (t:Team {name: "CHF"}) create (n)-[:IS_MEMBER_OF]->(t);

/*
create (n:Match :Play_in {mode: "Bo1", number_of_rounds: 1, win:"red", date_time: datetime("2022-09-29T22:00"), duration: 2278});
match (m:Match :Play_in {mode: "Bo1", number_of_rounds: 1, win:"red", date_time: datetime("2022-09-29T22:00"), duration: 2278}),
(t_blue:Team {name:"ISG"}),
(t_red:Team {name:"MAD"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "ADD"}),
(b: Player {name: "Grell"}),
(c: Player {name: "Seiya"}),
(d: Player {name: "Gavotto"}),
(e: Player {name: "Jelly"}),
(f: Player {name: "Armut"}),
(g: Player {name: "Elyoya"}),
(h: Player {name: "Nisqy"}),
(i: Player {name: "UNFORGIVEN"}),
(j: Player {name: "Kaiser"}),
(m:Match :Play_in {mode: "Bo1", number_of_rounds: 1, win:"red", date_time: datetime("2022-09-29T22:00"), duration: 2278})
create
(a) - [:ATTEND {ban: "Draven", pick: "Ornn", kill: 1, death: 7, assistance: 5, cs: 235, vision: 49, gold: 10975, damage: 7842}] -> (m),
(b) - [:ATTEND {ban: "Aatrox", pick: "Graves", kill: 5, death: 6, assistance: 7, cs: 84, vision: 118, gold: 14671, damage: 26855}] -> (m),
(c) - [:ATTEND {ban: "Sylas", pick: "Lissandra", kill: 3, death: 2, assistance: 7, cs: 290, vision: 42, gold: 14444, damage: 12814}] -> (m),
(d) - [:ATTEND {ban: "Sqain", pick: "MissFortune", kill: 3, death: 2, assistance: 5, cs: 327, vision: 43, gold: 15778, damage: 15958}] -> (m),
(e) - [:ATTEND {ban: "Viktor", pick: "Amumu", kill: 0, death: 5, assistance: 7, cs: 32, vision: 107, gold: 7414, damage: 5359}] -> (m),
(f) - [:ATTEND {ban: "Caitlyn", pick: "Gnar", kill: 3, death: 2, assistance: 10, cs: 293, vision: 49, gold: 17306, damage: 19480}] -> (m),
(g) - [:ATTEND {ban: "Kalista", pick: "Hecarim", kill: 7, death: 2, assistance: 10, cs: 74, vision: 59, gold: 16432, damage: 16094}] -> (m),
(h) - [:ATTEND {ban: "Sejuani", pick: "Taliyah", kill: 8, death: 4, assistance: 8, cs: 256, vision: 21, gold: 17445, damage: 23358}] -> (m),
(i) - [:ATTEND {ban: "LeBlanc", pick: "Seraphine", kill: 3, death: 1, assistance: 11, cs: 299, vision: 30, gold: 15755, damage: 13970}] -> (m),
(j) - [:ATTEND {ban: "Azir", pick: "Leona", kill: 1, death: 3, assistance: 9, cs: 36, vision: 106, gold: 9071, damage: 2661}] -> (m);

create (n:Match :Groups {mode: "Bo1", number_of_rounds: 1, win:"red", date_time: datetime("2022-10-17T02:00"), duration: 1639});
match (m:Match :Groups {mode: "Bo1", number_of_rounds: 1, win:"red", date_time: datetime("2022-10-17T02:00"), duration: 1639}),
(t_blue:Team {name:"RNG"}),
(t_red:Team {name:"GEN"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Breath"}),
(b: Player {name: "Wei"}),
(c: Player {name: "xiaohu"}),
(d: Player {name: "Gala"}),
(e: Player {name: "Ming"}),
(f: Player {name: "Doran"}),
(g: Player {name: "Peanut"}),
(h: Player {name: "Chovy"}),
(i: Player {name: "Ruler"}),
(j: Player {name: "Lehends"}),
(m:Match :Groups {mode: "Bo1", number_of_rounds: 1, win:"red", date_time: datetime("2022-10-17T02:00"), duration: 1639})
create
(a) - [:ATTEND {ban: "Caitlyn", pick: "Gangplank", kill: 5, death: 1, assistance: 0, cs: 240, vision: 22, gold: 13161, damage: 18148}] -> (m),
(b) - [:ATTEND {ban: "Yummi", pick: "Maokai", kill: 0, death: 3, assistance: 4, cs: 124, vision: 26, gold: 7790, damage: 12365}] -> (m),
(c) - [:ATTEND {ban: "Nami", pick: "Akali", kill: 0, death: 3, assistance: 2, cs: 213, vision: 17, gold: 8494, damage: 17541}] -> (m),
(d) - [:ATTEND {ban: "Sejuani", pick: "Tristana", kill: 0, death: 4, assistance: 3, cs: 246, vision: 20, gold: 9716, damage: 8625}] -> (m),
(e) - [:ATTEND {ban: "Poppy", pick: "Blitzcrank", kill: 1, death: 4, assistance: 4, cs: 33, vision: 57, gold: 5935, damage: 4645}] -> (m),
(f) - [:ATTEND {ban: "Aatrox", pick: "Renekton", kill: 1, death: 3, assistance: 4, cs: 226, vision: 24, gold: 10109, damage: 6244}] -> (m),
(g) - [:ATTEND {ban: "Lissandra", pick: "Trundle", kill: 2, death: 0, assistance: 7, cs: 150, vision: 41, gold: 9361, damage: 7691}] -> (m),
(h) - [:ATTEND {ban: "Fiora", pick: "Sylas", kill: 6, death: 0, assistance: 1, cs: 249, vision: 30, gold: 12342, damage: 20559}] -> (m),
(i) - [:ATTEND {ban: "Graves", pick: "Aphelios", kill: 5, death: 1, assistance: 10, cs: 227, vision: 33, gold: 12474, damage: 21320}] -> (m),
(j) - [:ATTEND {ban: "Rell", pick: "Renata Glasc", kill: 1, death: 2, assistance: 9, cs: 14, vision: 84, gold: 6930, damage: 5321}] -> (m);


create (n:Match :Play_in {mode: "Bo1", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-02T02:00"), duration: 1567});
match (m:Match :Play_in {mode: "Bo1", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-02T02:00"), duration: 1567}),
(t_blue:Team {name:"RNG"}),
(t_red:Team {name:"ISG"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Breath"}),
(b: Player {name: "Wei"}),
(c: Player {name: "xiaohu"}),
(d: Player {name: "Gala"}),
(e: Player {name: "Ming"}),
(f: Player {name: "ADD"}),
(g: Player {name: "Grell"}),
(h: Player {name: "Seiya"}),
(i: Player {name: "Gavotto"}),
(j: Player {name: "Jelly"}),
(m:Match :Play_in {mode: "Bo1", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-02T02:00"), duration: 1567})
create
(a) - [:ATTEND {ban: "Sejuani", pick: "Aatrox", kill: 6, death: 3, assistance: 10, cs: 222, vision: 21, gold: 12766, damage: 23166}] -> (m),
(b) - [:ATTEND {ban: "LeBlanc", pick: "Graves", kill: 6, death: 0, assistance: 15, cs: 213, vision: 75, gold: 13881, damage: 19484}] -> (m),
(c) - [:ATTEND {ban: "Renekton", pick: "Syndra", kill: 6, death: 1, assistance: 13, cs: 220, vision: 23, gold: 12686, damage: 18604}] -> (m),
(d) - [:ATTEND {ban: "Amumu", pick: "Kaisa", kill: 8, death: 1, assistance: 13, cs: 259, vision: 27, gold: 14105, damage: 23820}] -> (m),
(e) - [:ATTEND {ban: "Azir", pick: "Sett", kill: 7, death: 1, assistance: 17, cs: 31, vision: 66, gold: 9540, damage: 9388}] -> (m),
(f) - [:ATTEND {ban: "Kalista", pick: "Teemo", kill: 1, death: 9, assistance: 3, cs: 145, vision: 29, gold: 7443, damage: 13473}] -> (m),
(g) - [:ATTEND {ban: "Lissandra", pick: "Lillia", kill: 2, death: 6, assistance: 3, cs: 175, vision: 24, gold: 9181, damage: 9537}] -> (m),
(h) - [:ATTEND {ban: "Sylas", pick: "Sion", kill: 1, death: 4, assistance: 1, cs: 215, vision: 25, gold: 8646, damage: 8690}] -> (m),
(i) - [:ATTEND {ban: "Alistar", pick: "MissFortune", kill: 1, death: 7, assistance: 2, cs: 201, vision: 15, gold: 8755, damage: 11375}] -> (m),
(j) - [:ATTEND {ban: "Leona", pick: "Nautilus", kill: 1, death: 7, assistance: 3, cs: 28, vision: 43, gold: 5491, damage: 4294}] -> (m);
*/

create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-20T23:00"), duration: 1759});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-20T23:00"), duration: 1759}),
(t_blue:Team {name:"JDG"}),
(t_red:Team {name:"RGE"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "369"}),
(b: Player {name: "Kanavi"}),
(c: Player {name: "Yagao"}),
(d: Player {name: "Hope"}),
(e: Player {name: "Missing"}),
(f: Player {name: "Odoamne"}),
(g: Player {name: "Malrang"}),
(h: Player {name: "Larssen"}),
(i: Player {name: "Comp"}),
(j: Player {name: "Trymbi"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-20T23:00"), duration: 1759})
create
(a) - [:ATTEND {ban: "Ornn", pick: "Gragas", kill: 5, death: 1, assistance: 4, cs: 201, vision: 24, gold: 11338, damage: 19634}] -> (m),
(b) - [:ATTEND {ban: "Maokai", pick: "Graves", kill: 4, death: 1, assistance: 5, cs: 270, vision: 105, gold: 13950, damage: 19258}] -> (m),
(c) - [:ATTEND {ban: "Caitlyn", pick: "Taliyah", kill: 1, death: 1, assistance: 7, cs: 253, vision: 33, gold: 11580, damage: 10723}] -> (m),
(d) - [:ATTEND {ban: "JarvanIV", pick: "Aphelios", kill: 3, death: 2, assistance: 5, cs: 252, vision: 49, gold: 12278, damage: 14427}] -> (m),
(e) - [:ATTEND {ban: "Gnar", pick: "Lulu", kill: 0, death: 1, assistance: 10, cs: 9, vision: 73, gold: 7173, damage: 3732}] -> (m),
(f) - [:ATTEND {ban: "Aatrox", pick: "Renekton", kill: 1, death: 4, assistance: 1, cs: 227, vision: 21, gold: 9823, damage: 13323}] -> (m),
(g) - [:ATTEND {ban: "Yummi", pick: "Vi", kill: 0, death: 3, assistance: 4, cs: 141, vision: 44, gold: 8050, damage: 5455}] -> (m),
(h) - [:ATTEND {ban: "Sylas", pick: "Azir", kill: 2, death: 2, assistance: 1, cs: 275, vision: 26, gold: 11322, damage: 17404}] -> (m),
(i) - [:ATTEND {ban: "Viktor", pick: "Lucian", kill: 2, death: 0, assistance: 1, cs: 257, vision: 29, gold: 11311, damage: 11208}] -> (m),
(j) - [:ATTEND {ban: "LeBlanc", pick: "Nami", kill: 1, death: 4, assistance: 1, cs: 18, vision: 60, gold: 6369, damage: 5288}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-20T23:00"), duration: 1779});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-20T23:00"), duration: 1779}),
(t_blue:Team {name:"RGE"}),
(t_red:Team {name:"JDG"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Odoamne"}),
(b: Player {name: "Malrang"}),
(c: Player {name: "Larssen"}),
(d: Player {name: "Comp"}),
(e: Player {name: "Trymbi"}),
(f: Player {name: "369"}),
(g: Player {name: "Kanavi"}),
(h: Player {name: "Yagao"}),
(i: Player {name: "Hope"}),
(j: Player {name: "Missing"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-20T23:00"), duration: 1779})
create
(a) - [:ATTEND {ban: "Graves", pick: "Maokai", kill: 0, death: 2, assistance: 5, cs: 214, vision: 22, gold: 9690, damage: 12634}] -> (m),
(b) - [:ATTEND {ban: "Sejuani", pick: "Lee Sin", kill: 2, death: 3, assistance: 4, cs: 132, vision: 80, gold: 8657, damage: 7711}] -> (m),
(c) - [:ATTEND {ban: "Fiora", pick: "Azir", kill: 1, death: 0, assistance: 2, cs: 286, vision: 30, gold: 11829, damage: 19858}] -> (m),
(d) - [:ATTEND {ban: "Vi", pick: "Lucian", kill: 3, death: 3, assistance: 0, cs: 260, vision: 27, gold: 11874, damage: 8163}] -> (m),
(e) - [:ATTEND {ban: "Gragas", pick: "Nami", kill: 0, death: 2, assistance: 4, cs: 12, vision: 60, gold: 5991, damage: 5187}] -> (m),
(f) - [:ATTEND {ban: "Caitlyn", pick: "Gwen", kill: 0, death: 3, assistance: 4, cs: 263, vision: 31, gold: 11944, damage: 18552}] -> (m),
(g) - [:ATTEND {ban: "Yummi", pick: "Viego", kill: 4, death: 2, assistance: 2, cs: 182, vision: 42, gold: 11373, damage: 8548}] -> (m),
(h) - [:ATTEND {ban: "Aatrox", pick: "Sylas", kill: 1, death: 1, assistance: 4, cs: 268, vision: 34, gold: 12303, damage: 11081}] -> (m),
(i) - [:ATTEND {ban: "Viktor", pick: "Aphelios", kill: 4, death: 0, assistance: 3, cs: 312, vision: 43, gold: 15039, damage: 13586}] -> (m),
(j) - [:ATTEND {ban: "JarvanIV", pick: "Lulu", kill: 1, death: 0, assistance: 6, cs: 14, vision: 90, gold: 8220, damage: 4202}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"red", date_time: datetime("2022-10-20T23:00"), duration: 1985});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"red", date_time: datetime("2022-10-20T23:00"), duration: 1985}),
(t_blue:Team {name:"RGE"}),
(t_red:Team {name:"JDG"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Odoamne"}),
(b: Player {name: "Malrang"}),
(c: Player {name: "Larssen"}),
(d: Player {name: "Comp"}),
(e: Player {name: "Trymbi"}),
(f: Player {name: "369"}),
(g: Player {name: "Kanavi"}),
(h: Player {name: "Yagao"}),
(i: Player {name: "Hope"}),
(j: Player {name: "Missing"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"red", date_time: datetime("2022-10-20T23:00"), duration: 1985})
create
(a) - [:ATTEND {ban: "Graves", pick: "Maokai", kill: 0, death: 3, assistance: 3, cs: 186, vision: 24, gold: 8885, damage: 14009}] -> (m),
(b) - [:ATTEND {ban: "Sejuani", pick: "Lee Sin", kill: 0, death: 3, assistance: 3, cs: 168, vision: 98, gold: 8934, damage: 9116}] -> (m),
(c) - [:ATTEND {ban: "Aphelios", pick: "LeBlanc", kill: 5, death: 0, assistance: 1, cs: 275, vision: 27, gold: 13370, damage: 26303}] -> (m),
(d) - [:ATTEND {ban: "Fiora", pick: "Kalista", kill: 5, death: 4, assistance: 1, cs: 319, vision: 27, gold: 13811, damage: 14696}] -> (m),
(e) - [:ATTEND {ban: "Vi", pick: "Soraka", kill: 0, death: 4, assistance: 7, cs: 15, vision: 58, gold: 7262, damage: 10160}] -> (m),
(f) - [:ATTEND {ban: "Caitlyn", pick: "Ornn", kill: 2, death: 1, assistance: 9, cs: 243, vision: 39, gold: 11939, damage: 25221}] -> (m),
(g) - [:ATTEND {ban: "Yummi", pick: "Viego", kill: 5, death: 2, assistance: 3, cs: 223, vision: 65, gold: 12986, damage: 13077}] -> (m),
(h) - [:ATTEND {ban: "Aatrox", pick: "Sylas", kill: 3, death: 1, assistance: 6, cs: 246, vision: 22, gold: 12408, damage: 20680}] -> (m),
(i) - [:ATTEND {ban: "Azir", pick: "Lucian", kill: 2, death: 4, assistance: 10, cs: 279, vision: 52, gold: 13344, damage: 24490}] -> (m),
(j) - [:ATTEND {ban: "Viktor", pick: "Nami", kill: 2, death: 2, assistance: 9, cs: 25, vision: 69, gold: 7904, damage: 8795}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-21T23:00"), duration: 2289});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-21T23:00"), duration: 2289}),
(t_blue:Team {name:"T1"}),
(t_red:Team {name:"RNG"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Zeus"}),
(b: Player {name: "Oner"}),
(c: Player {name: "Faker"}),
(d: Player {name: "Gumayusi"}),
(e: Player {name: "Keria"}),
(f: Player {name: "Breath"}),
(g: Player {name: "Wei"}),
(h: Player {name: "xiaohu"}),
(i: Player {name: "Gala"}),
(j: Player {name: "Ming"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-21T23:00"), duration: 2289})
create
(a) - [:ATTEND {ban: "Lissandra", pick: "Camille", kill: 5, death: 2, assistance: 7, cs: 336, vision: 36, gold: 18264, damage: 21585}] -> (m),
(b) - [:ATTEND {ban: "Fiora", pick: "Graves", kill: 4, death: 3, assistance: 10, cs: 320, vision: 134, gold: 17819, damage: 15496}] -> (m),
(c) - [:ATTEND {ban: "Jax", pick: "Viktor", kill: 3, death: 3, assistance: 7, cs: 326, vision: 36, gold: 15753, damage: 24437}] -> (m),
(d) - [:ATTEND {ban: "Galio", pick: "Ashe", kill: 3, death: 0, assistance: 6, cs: 335, vision: 59, gold: 15181, damage: 12040}] -> (m),
(e) - [:ATTEND {ban: "Taliyah", pick: "Heimerdinger", kill: 0, death: 2, assistance: 9, cs: 25, vision: 101, gold: 9056, damage: 8493}] -> (m),
(f) - [:ATTEND {ban: "Yummi", pick: "Renekton", kill: 1, death: 5, assistance: 3, cs: 336, vision: 25, gold: 13379, damage: 12185}] -> (m),
(g) - [:ATTEND {ban: "Caitlyn", pick: "Viego", kill: 6, death: 3, assistance: 3, cs: 175, vision: 69, gold: 11989, damage: 10410}] -> (m),
(h) - [:ATTEND {ban: "Aatrox", pick: "Akali", kill: 1, death: 3, assistance: 7, cs: 333, vision: 28, gold: 13614, damage: 14353}] -> (m),
(i) - [:ATTEND {ban: "Sylas", pick: "Aphelios", kill: 2, death: 1, assistance: 3, cs: 451, vision: 38, gold: 17505, damage: 16592}] -> (m),
(j) - [:ATTEND {ban: "LeBlanc", pick: "Nautilus", kill: 0, death: 3, assistance: 4, cs: 35, vision: 91, gold: 7139, damage: 1885}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-21T23:00"), duration: 2519});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-21T23:00"), duration: 2519}),
(t_blue:Team {name:"RNG"}),
(t_red:Team {name:"T1"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Breath"}),
(b: Player {name: "Wei"}),
(c: Player {name: "xiaohu"}),
(d: Player {name: "Gala"}),
(e: Player {name: "Ming"}),
(f: Player {name: "Zeus"}),
(g: Player {name: "Oner"}),
(h: Player {name: "Faker"}),
(i: Player {name: "Gumayusi"}),
(j: Player {name: "Keria"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-21T23:00"), duration: 2519})
create
(a) - [:ATTEND {ban: "Caitlyn", pick: "Fiora", kill: 7, death: 2, assistance: 3, cs: 404, vision: 64, gold: 19691, damage: 18119}] -> (m),
(b) - [:ATTEND {ban: "Graves", pick: "Sejuani", kill: 3, death: 2, assistance: 10, cs: 199, vision: 75, gold: 13371, damage: 13357}] -> (m),
(c) - [:ATTEND {ban: "LeBlanc", pick: "Sylas", kill: 1, death: 6, assistance: 3, cs: 375, vision: 32, gold: 16323, damage: 17841}] -> (m),
(d) - [:ATTEND {ban: "Lucian", pick: "Kaisa", kill: 2, death: 1, assistance: 2, cs: 461, vision: 58, gold: 18803, damage: 17325}] -> (m),
(e) - [:ATTEND {ban: "Heimerdinger", pick: "Nautilus", kill: 1, death: 2, assistance: 3, cs: 45, vision: 154, gold: 8683, damage: 4075}] -> (m),
(f) - [:ATTEND {ban: "Lissandra", pick: "Jayce", kill: 0, death: 8, assistance: 10, cs: 318, vision: 32, gold: 15299, damage: 30493}] -> (m),
(g) - [:ATTEND {ban: "Aatrox", pick: "Viego", kill: 3, death: 3, assistance: 4, cs: 179, vision: 64, gold: 14136, damage: 9931}] -> (m),
(h) - [:ATTEND {ban: "Yummi", pick: "Akali", kill: 3, death: 2, assistance: 6, cs: 329, vision: 31, gold: 16645, damage: 26288}] -> (m),
(i) - [:ATTEND {ban: "Aphelios", pick: "Xayah", kill: 7, death: 0, assistance: 4, cs: 504, vision: 60, gold: 23136, damage: 30760}] -> (m),
(j) - [:ATTEND {ban: "Tristana", pick: "Renata Glasc", kill: 0, death: 1, assistance: 11, cs: 23, vision: 102, gold: 10372, damage: 5333}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"red", date_time: datetime("2022-10-21T23:00"), duration: 1592});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"red", date_time: datetime("2022-10-21T23:00"), duration: 1592}),
(t_blue:Team {name:"RNG"}),
(t_red:Team {name:"T1"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Breath"}),
(b: Player {name: "Wei"}),
(c: Player {name: "xiaohu"}),
(d: Player {name: "Gala"}),
(e: Player {name: "Ming"}),
(f: Player {name: "Zeus"}),
(g: Player {name: "Oner"}),
(h: Player {name: "Faker"}),
(i: Player {name: "Gumayusi"}),
(j: Player {name: "Keria"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"red", date_time: datetime("2022-10-21T23:00"), duration: 1592})
create
(a) - [:ATTEND {ban: "Caitlyn", pick: "Aatrox", kill: 2, death: 7, assistance: 1, cs: 202, vision: 15, gold: 9160, damage: 10738}] -> (m),
(b) - [:ATTEND {ban: "Graves", pick: "Vi", kill: 0, death: 7, assistance: 3, cs: 109, vision: 28, gold: 6569, damage: 5532}] -> (m),
(c) - [:ATTEND {ban: "Camille", pick: "Sylas", kill: 2, death: 5, assistance: 3, cs: 193, vision: 23, gold: 9809, damage: 15073}] -> (m),
(d) - [:ATTEND {ban: "Renata Glasc", pick: "Aphelios", kill: 5, death: 3, assistance: 1, cs: 240, vision: 26, gold: 11082, damage: 16499}] -> (m),
(e) - [:ATTEND {ban: "Thresh", pick: "Soraka", kill: 1, death: 5, assistance: 5, cs: 8, vision: 58, gold: 6069, damage: 3933}] -> (m),
(f) - [:ATTEND {ban: "Yummi", pick: "Yone", kill: 8, death: 4, assistance: 7, cs: 220, vision: 22, gold: 13132, damage: 20691}] -> (m),
(g) - [:ATTEND {ban: "Lissandra", pick: "Sejuani", kill: 3, death: 1, assistance: 17, cs: 123, vision: 35, gold: 10404, damage: 13640}] -> (m),
(h) - [:ATTEND {ban: "Fiora", pick: "Akali", kill: 7, death: 3, assistance: 7, cs: 193, vision: 18, gold: 11096, damage: 20300}] -> (m),
(i) - [:ATTEND {ban: "Kaisa", pick: "Varus", kill: 8, death: 2, assistance: 10, cs: 247, vision: 28, gold: 13312, damage: 17552}] -> (m),
(j) - [:ATTEND {ban: "Lucian", pick: "Tahm Kench", kill: 1, death: 1, assistance: 16, cs: 39, vision: 56, gold: 7694, damage: 6747}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 1553});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 1553}),
(t_blue:Team {name:"GEN"}),
(t_red:Team {name:"DK"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Doran"}),
(b: Player {name: "Peanut"}),
(c: Player {name: "Chovy"}),
(d: Player {name: "Ruler"}),
(e: Player {name: "Lehends"}),
(f: Player {name: "Nuguri"}),
(g: Player {name: "Canyon"}),
(h: Player {name: "ShowMaker"}),
(i: Player {name: "deokdam"}),
(j: Player {name: "Kellin"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 1553})
create
(a) - [:ATTEND {ban: "Graves", pick: "Renekton", kill: 1, death: 3, assistance: 9, cs: 201, vision: 26, gold: 10384, damage: 10842}] -> (m),
(b) - [:ATTEND {ban: "Sejuani", pick: "Maokai", kill: 1, death: 1, assistance: 14, cs: 123, vision: 37, gold: 8084, damage: 10464}] -> (m),
(c) - [:ATTEND {ban: "Caitlyn", pick: "Ryze", kill: 11, death: 3, assistance: 3, cs: 233, vision: 36, gold: 13792, damage: 14864}] -> (m),
(d) - [:ATTEND {ban: "Camille", pick: "MissFortune", kill: 4, death: 0, assistance: 8, cs: 274, vision: 43, gold: 12165, damage: 17862}] -> (m),
(e) - [:ATTEND {ban: "Viego", pick: "Yummi", kill: 0, death: 0, assistance: 14, cs: 14, vision: 59, gold: 6836, damage: 5562}] -> (m),
(f) - [:ATTEND {ban: "Aatrox", pick: "Gragas", kill: 2, death: 5, assistance: 2, cs: 192, vision: 22, gold: 9417, damage: 12062}] -> (m),
(g) - [:ATTEND {ban: "Sylas", pick: "Kayn", kill: 3, death: 3, assistance: 4, cs: 194, vision: 31, gold: 10019, damage: 15556}] -> (m),
(h) - [:ATTEND {ban: "Azir", pick: "Lissandra", kill: 0, death: 4, assistance: 5, cs: 188, vision: 17, gold: 8979, damage: 9792}] -> (m),
(i) - [:ATTEND {ban: "Viktor", pick: "Lucian", kill: 2, death: 3, assistance: 1, cs: 255, vision: 15, gold: 9192, damage: 8957}] -> (m),
(j) - [:ATTEND {ban: "Vi", pick: "Nami", kill: 0, death: 2, assistance: 5, cs: 5, vision: 48, gold: 5191, damage: 6009}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-22T23:00"), duration: 2540});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-22T23:00"), duration: 2540}),
(t_blue:Team {name:"DK"}),
(t_red:Team {name:"GEN"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Nuguri"}),
(b: Player {name: "Canyon"}),
(c: Player {name: "ShowMaker"}),
(d: Player {name: "deokdam"}),
(e: Player {name: "Kellin"}),
(f: Player {name: "Doran"}),
(g: Player {name: "Peanut"}),
(h: Player {name: "Chovy"}),
(i: Player {name: "Ruler"}),
(j: Player {name: "Lehends"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-22T23:00"), duration: 2540})
create
(a) - [:ATTEND {ban: "Sylas", pick: "Gragas", kill: 2, death: 3, assistance: 7, cs: 265, vision: 28, gold: 13293, damage: 17115}] -> (m),
(b) - [:ATTEND {ban: "Fiora", pick: "Wukong", kill: 2, death: 5, assistance: 5, cs: 159, vision: 55, gold: 11446, damage: 11907}] -> (m),
(c) - [:ATTEND {ban: "Aphelios", pick: "Azir", kill: 3, death: 3, assistance: 5, cs: 327, vision: 50, gold: 15885, damage: 30676}] -> (m),
(d) - [:ATTEND {ban: "Viego", pick: "Lucian", kill: 2, death: 2, assistance: 6, cs: 380, vision: 54, gold: 18045, damage: 23870}] -> (m),
(e) - [:ATTEND {ban: "Ahri", pick: "Nami", kill: 2, death: 4, assistance: 8, cs: 14, vision: 114, gold: 9211, damage: 7610}] -> (m),
(f) - [:ATTEND {ban: "Graves", pick: "Camille", kill: 3, death: 2, assistance: 3, cs: 296, vision: 65, gold: 14922, damage: 17212}] -> (m),
(g) - [:ATTEND {ban: "Aatrox", pick: "Sejuani", kill: 0, death: 3, assistance: 13, cs: 192, vision: 81, gold: 12199, damage: 15440}] -> (m),
(h) - [:ATTEND {ban: "Sivir", pick: "Yone", kill: 7, death: 0, assistance: 5, cs: 425, vision: 55, gold: 19814, damage: 24963}] -> (m),
(i) - [:ATTEND {ban: "Renekton", pick: "MissFortune", kill: 6, death: 2, assistance: 5, cs: 434, vision: 56, gold: 19233, damage: 25181}] -> (m),
(j) - [:ATTEND {ban: "Kayn", pick: "Yummi", kill: 1, death: 4, assistance: 12, cs: 7, vision: 100, gold: 9507, damage: 7815}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 1567});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 1567}),
(t_blue:Team {name:"DK"}),
(t_red:Team {name:"GEN"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Nuguri"}),
(b: Player {name: "Canyon"}),
(c: Player {name: "ShowMaker"}),
(d: Player {name: "deokdam"}),
(e: Player {name: "Kellin"}),
(f: Player {name: "Doran"}),
(g: Player {name: "Peanut"}),
(h: Player {name: "Chovy"}),
(i: Player {name: "Ruler"}),
(j: Player {name: "Lehends"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 1567})
create
(a) - [:ATTEND {ban: "Sylas", pick: "Sejuani", kill: 4, death: 1, assistance: 8, cs: 211, vision: 20, gold: 11494, damage: 16370}] -> (m),
(b) - [:ATTEND {ban: "Fiora", pick: "Viego", kill: 4, death: 1, assistance: 5, cs: 150, vision: 45, gold: 9599, damage: 7951}] -> (m),
(c) - [:ATTEND {ban: "Yummi", pick: "Swain", kill: 3, death: 0, assistance: 9, cs: 236, vision: 17, gold: 10785, damage: 17826}] -> (m),
(d) - [:ATTEND {ban: "Renekton", pick: "Aphelios", kill: 4, death: 0, assistance: 5, cs: 243, vision: 28, gold: 11430, damage: 11627}] -> (m),
(e) - [:ATTEND {ban: "Vi", pick: "Lulu", kill: 0, death: 0, assistance: 12, cs: 12, vision: 45, gold: 6886, damage: 6395}] -> (m),
(f) - [:ATTEND {ban: "Graves", pick: "Maokai", kill: 0, death: 3, assistance: 1, cs: 200, vision: 17, gold: 7775, damage: 10329}] -> (m),
(g) - [:ATTEND {ban: "Aatrox", pick: "Poppy", kill: 1, death: 2, assistance: 0, cs: 128, vision: 32, gold: 7137, damage: 5450}] -> (m),
(h) - [:ATTEND {ban: "Caitlyn", pick: "Azir", kill: 1, death: 4, assistance: 0, cs: 258, vision: 29, gold: 10236, damage: 15516}] -> (m),
(i) - [:ATTEND {ban: "Lissandra", pick: "Lucian", kill: 0, death: 2, assistance: 2, cs: 240, vision: 41, gold: 9599, damage: 12143}] -> (m),
(j) - [:ATTEND {ban: "Camille", pick: "Nami", kill: 0, death: 4, assistance: 2, cs: 4, vision: 52, gold: 4967, damage: 3840}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 4, win:"red", date_time: datetime("2022-10-22T23:00"), duration: 1469});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 4, win:"red", date_time: datetime("2022-10-22T23:00"), duration: 1469}),
(t_blue:Team {name:"GEN"}),
(t_red:Team {name:"DK"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Doran"}),
(b: Player {name: "Peanut"}),
(c: Player {name: "Chovy"}),
(d: Player {name: "Ruler"}),
(e: Player {name: "Lehends"}),
(f: Player {name: "Nuguri"}),
(g: Player {name: "Canyon"}),
(h: Player {name: "ShowMaker"}),
(i: Player {name: "deokdam"}),
(j: Player {name: "Kellin"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 4, win:"red", date_time: datetime("2022-10-22T23:00"), duration: 1469})
create
(a) - [:ATTEND {ban: "Graves", pick: "Gnar", kill: 1, death: 2, assistance: 1, cs: 198, vision: 20, gold: 9016, damage: 8876}] -> (m),
(b) - [:ATTEND {ban: "Caitlyn", pick: "Sejuani", kill: 0, death: 5, assistance: 2, cs: 102, vision: 29, gold: 5897, damage: 4310}] -> (m),
(c) - [:ATTEND {ban: "Kayn", pick: "Azir", kill: 1, death: 1, assistance: 1, cs: 233, vision: 22, gold: 8654, damage: 9304}] -> (m),
(d) - [:ATTEND {ban: "Taliyah", pick: "Jinx", kill: 0, death: 1, assistance: 1, cs: 243, vision: 35, gold: 8527, damage: 6404}] -> (m),
(e) - [:ATTEND {ban: "Ornn", pick: "Lulu", kill: 0, death: 4, assistance: 2, cs: 16, vision: 47, gold: 5011, damage: 2671}] -> (m),
(f) - [:ATTEND {ban: "Sylas", pick: "Renekton", kill: 2, death: 1, assistance: 3, cs: 216, vision: 16, gold: 10897, damage: 7184}] -> (m),
(g) - [:ATTEND {ban: "Aatrox", pick: "Viego", kill: 4, death: 1, assistance: 5, cs: 153, vision: 43, gold: 10474, damage: 8487}] -> (m),
(h) - [:ATTEND {ban: "Yummi", pick: "LeBlanc", kill: 3, death: 0, assistance: 4, cs: 198, vision: 51, gold: 10033, damage: 12852}] -> (m),
(i) - [:ATTEND {ban: "Thresh", pick: "Aphelios", kill: 4, death: 0, assistance: 3, cs: 255, vision: 27, gold: 11639, damage: 10771}] -> (m),
(j) - [:ATTEND {ban: "Camille", pick: "Renata Glasc", kill: 0, death: 0, assistance: 8, cs: 9, vision: 87, gold: 6752, damage: 3609}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 5, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 2691});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 5, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 2691}),
(t_blue:Team {name:"GEN"}),
(t_red:Team {name:"DK"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Doran"}),
(b: Player {name: "Peanut"}),
(c: Player {name: "Chovy"}),
(d: Player {name: "Ruler"}),
(e: Player {name: "Lehends"}),
(f: Player {name: "Nuguri"}),
(g: Player {name: "Canyon"}),
(h: Player {name: "ShowMaker"}),
(i: Player {name: "deokdam"}),
(j: Player {name: "Kellin"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 5, win:"blue", date_time: datetime("2022-10-22T23:00"), duration: 2691})
create
(a) - [:ATTEND {ban: "Graves", pick: "Gnar", kill: 1, death: 2, assistance: 9, cs: 336, vision: 58, gold: 16502, damage: 24667}] -> (m),
(b) - [:ATTEND {ban: "Viego", pick: "Sejuani", kill: 4, death: 2, assistance: 7, cs: 193, vision: 75, gold: 13702, damage: 12372}] -> (m),
(c) - [:ATTEND {ban: "Caitlyn", pick: "Viktor", kill: 7, death: 2, assistance: 6, cs: 383, vision: 72, gold: 19450, damage: 36152}] -> (m),
(d) - [:ATTEND {ban: "Nidalee", pick: "Lucian", kill: 6, death: 1, assistance: 6, cs: 463, vision: 88, gold: 22301, damage: 39636}] -> (m),
(e) - [:ATTEND {ban: "Karthus", pick: "Nami", kill: 0, death: 4, assistance: 12, cs: 14, vision: 124, gold: 9690, damage: 8499}] -> (m),
(f) - [:ATTEND {ban: "Sylas", pick: "Renekton", kill: 4, death: 4, assistance: 13, cs: 341, vision: 52, gold: 16156, damage: 16818}] -> (m),
(g) - [:ATTEND {ban: "Aatrox", pick: "Kayn", kill: 3, death: 3, assistance: 6, cs: 227, vision: 77, gold: 14271, damage: 14243}] -> (m),
(h) - [:ATTEND {ban: "Yummi", pick: "Syndra", kill: 2, death: 5, assistance: 7, cs: 300, vision: 46, gold: 14500, damage: 24604}] -> (m),
(i) - [:ATTEND {ban: "Yone", pick: "Aphelios", kill: 2, death: 3, assistance: 2, cs: 466, vision: 56, gold: 19210, damage: 23877}] -> (m),
(j) - [:ATTEND {ban: "Vi", pick: "Lulu", kill: 0, death: 3, assistance: 5, cs: 10, vision: 120, gold: 8607, damage: 4878}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2100});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2100}),
(t_blue:Team {name:"DRX"}),
(t_red:Team {name:"EDG"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "kingen"}),
(b: Player {name: "Pyosik"}),
(c: Player {name: "Zeka"}),
(d: Player {name: "Deft"}),
(e: Player {name: "Beryl"}),
(f: Player {name: "Flandre"}),
(g: Player {name: "JieJie"}),
(h: Player {name: "Scout"}),
(i: Player {name: "Viper"}),
(j: Player {name: "Meiko"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 1, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2100})
create
(a) - [:ATTEND {ban: "Lucian", pick: "Fiora", kill: 3, death: 2, assistance: 1, cs: 282, vision: 40, gold: 13966, damage: 11770}] -> (m),
(b) - [:ATTEND {ban: "Ryze", pick: "Graves", kill: 1, death: 3, assistance: 2, cs: 222, vision: 125, gold: 10793, damage: 7215}] -> (m),
(c) - [:ATTEND {ban: "Sejuani", pick: "Orianna", kill: 3, death: 2, assistance: 5, cs: 338, vision: 39, gold: 14648, damage: 16898}] -> (m),
(d) - [:ATTEND {ban: "Varus", pick: "Ashe", kill: 1, death: 4, assistance: 3, cs: 273, vision: 47, gold: 12235, damage: 15169}] -> (m),
(e) - [:ATTEND {ban: "Ezreal", pick: "Heimerdinger", kill: 1, death: 4, assistance: 4, cs: 37, vision: 99, gold: 8701, damage: 19648}] -> (m),
(f) - [:ATTEND {ban: "Yummi", pick: "Kennen", kill: 4, death: 1, assistance: 6, cs: 269, vision: 24, gold: 13488, damage: 22887}] -> (m),
(g) - [:ATTEND {ban: "Caitlyn", pick: "Lee Sin", kill: 0, death: 2, assistance: 9, cs: 198, vision: 50, gold: 11146, damage: 8894}] -> (m),
(h) - [:ATTEND {ban: "Aatrox", pick: "Azir", kill: 9, death: 1, assistance: 6, cs: 292, vision: 33, gold: 15427, damage: 32135}] -> (m),
(i) - [:ATTEND {ban: "Sylas", pick: "Sivir", kill: 2, death: 1, assistance: 9, cs: 329, vision: 43, gold: 14818, damage: 16014}] -> (m),
(j) - [:ATTEND {ban: "Viktor", pick: "Soraka", kill: 0, death: 4, assistance: 9, cs: 12, vision: 74, gold: 7530, damage: 3640}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-23T23:00"), duration: 2547});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-23T23:00"), duration: 2547}),
(t_blue:Team {name:"EDG"}),
(t_red:Team {name:"DRX"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Flandre"}),
(b: Player {name: "JieJie"}),
(c: Player {name: "Scout"}),
(d: Player {name: "Viper"}),
(e: Player {name: "Meiko"}),
(f: Player {name: "kingen"}),
(g: Player {name: "Pyosik"}),
(h: Player {name: "Zeka"}),
(i: Player {name: "Deft"}),
(j: Player {name: "Beryl"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 2, win:"red", date_time: datetime("2022-10-23T23:00"), duration: 2547})
create
(a) - [:ATTEND {ban: "Lucian", pick: "Aatrox", kill: 3, death: 4, assistance: 5, cs: 293, vision: 43, gold: 15819, damage: 21699}] -> (m),
(b) - [:ATTEND {ban: "Fiora", pick: "Poppy", kill: 1, death: 1, assistance: 5, cs: 188, vision: 77, gold: 12468, damage: 10206}] -> (m),
(c) - [:ATTEND {ban: "Renekton", pick: "Akali", kill: 2, death: 2, assistance: 2, cs: 420, vision: 45, gold: 17794, damage: 14685}] -> (m),
(d) - [:ATTEND {ban: "Kaisa", pick: "Ezreal", kill: 3, death: 4, assistance: 4, cs: 417, vision: 62, gold: 20614, damage: 43874}] -> (m),
(e) - [:ATTEND {ban: "Soraka", pick: "Heimerdinger", kill: 2, death: 7, assistance: 4, cs: 33, vision: 130, gold: 10741, damage: 21878}] -> (m),
(f) - [:ATTEND {ban: "Yummi", pick: "Jax", kill: 5, death: 0, assistance: 2, cs: 349, vision: 37, gold: 17195, damage: 21927}] -> (m),
(g) - [:ATTEND {ban: "Caitlyn", pick: "Sejuani", kill: 2, death: 4, assistance: 9, cs: 170, vision: 60, gold: 11999, damage: 15532}] -> (m),
(h) - [:ATTEND {ban: "Maokai", pick: "Azir", kill: 3, death: 2, assistance: 3, cs: 361, vision: 36, gold: 18807, damage: 38775}] -> (m),
(i) - [:ATTEND {ban: "Ashe", pick: "Aphelios", kill: 8, death: 2, assistance: 4, cs: 425, vision: 55, gold: 20343, damage: 43097}] -> (m),
(j) - [:ATTEND {ban: "Jinx", pick: "Lulu", kill: 0, death: 3, assistance: 10, cs: 31, vision: 131, gold: 9946, damage: 5246}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2520});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2520}),
(t_blue:Team {name:"DRX"}),
(t_red:Team {name:"EDG"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "kingen"}),
(b: Player {name: "Pyosik"}),
(c: Player {name: "Zeka"}),
(d: Player {name: "Deft"}),
(e: Player {name: "Beryl"}),
(f: Player {name: "Flandre"}),
(g: Player {name: "JieJie"}),
(h: Player {name: "Scout"}),
(i: Player {name: "Viper"}),
(j: Player {name: "Meiko"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 3, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2520})
create
(a) - [:ATTEND {ban: "Lucian", pick: "Aatrox", kill: 1, death: 2, assistance: 3, cs: 326, vision: 35, gold: 14928, damage: 13678}] -> (m),
(b) - [:ATTEND {ban: "Azir", pick: "Kindred", kill: 1, death: 1, assistance: 6, cs: 289, vision: 133, gold: 14741, damage: 20042}] -> (m),
(c) - [:ATTEND {ban: "Sejuani", pick: "Sylas", kill: 2, death: 2, assistance: 5, cs: 354, vision: 39, gold: 16460, damage: 13341}] -> (m),
(d) - [:ATTEND {ban: "Aphelios", pick: "Draven", kill: 5, death: 1, assistance: 2, cs: 394, vision: 42, gold: 21243, damage: 22406}] -> (m),
(e) - [:ATTEND {ban: "Lulu", pick: "Soraka", kill: 0, death: 2, assistance: 8, cs: 26, vision: 100, gold: 8994, damage: 6140}] -> (m),
(f) - [:ATTEND {ban: "Yummi", pick: "Fiora", kill: 1, death: 1, assistance: 1, cs: 386, vision: 38, gold: 15399, damage: 11495}] -> (m),
(g) - [:ATTEND {ban: "Caitlyn", pick: "Graves", kill: 2, death: 2, assistance: 4, cs: 293, vision: 174, gold: 14686, damage: 14898}] -> (m),
(h) - [:ATTEND {ban: "Heimerdinger", pick: "Viktor", kill: 2, death: 1, assistance: 3, cs: 362, vision: 46, gold: 16702, damage: 36236}] -> (m),
(i) - [:ATTEND {ban: "Ashe", pick: "Kalista", kill: 3, death: 2, assistance: 1, cs: 380, vision: 54, gold: 16406, damage: 20430}] -> (m),
(j) - [:ATTEND {ban: "Ezreal", pick: "Renata Glasc", kill: 0, death: 3, assistance: 3, cs: 21, vision: 107, gold: 7875, damage: 3855}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 4, win:"red", date_time: datetime("2022-10-23T23:00"), duration: 2322});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 4, win:"red", date_time: datetime("2022-10-23T23:00"), duration: 2322}),
(t_blue:Team {name:"EDG"}),
(t_red:Team {name:"DRX"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Flandre"}),
(b: Player {name: "JieJie"}),
(c: Player {name: "Scout"}),
(d: Player {name: "Viper"}),
(e: Player {name: "Meiko"}),
(f: Player {name: "kingen"}),
(g: Player {name: "Pyosik"}),
(h: Player {name: "Zeka"}),
(i: Player {name: "Deft"}),
(j: Player {name: "Beryl"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 4, win:"red", date_time: datetime("2022-10-23T23:00"), duration: 2322})
create
(a) - [:ATTEND {ban: "Sylas", pick: "Aatrox", kill: 2, death: 3, assistance: 1, cs: 278, vision: 32, gold: 12663, damage: 23076}] -> (m),
(b) - [:ATTEND {ban: "Akali", pick: "Lee Sin", kill: 1, death: 6, assistance: 7, cs: 193, vision: 57, gold: 10625, damage: 9461}] -> (m),
(c) - [:ATTEND {ban: "Caitlyn", pick: "LeBlanc", kill: 6, death: 4, assistance: 4, cs: 279, vision: 65, gold: 15248, damage: 37088}] -> (m),
(d) - [:ATTEND {ban: "Heimerdinger", pick: "Varus", kill: 2, death: 6, assistance: 4, cs: 357, vision: 50, gold: 14510, damage: 27088}] -> (m),
(e) - [:ATTEND {ban: "Soraka", pick: "Renata Glasc", kill: 0, death: 3, assistance: 7, cs: 56, vision: 115, gold: 7706, damage: 4759}] -> (m),
(f) - [:ATTEND {ban: "Lucian", pick: "Camille", kill: 6, death: 5, assistance: 6, cs: 275, vision: 54, gold: 16234, damage: 27535}] -> (m),
(g) - [:ATTEND {ban: "Viktor", pick: "Sejuani", kill: 3, death: 1, assistance: 14, cs: 201, vision: 67, gold: 12884, damage: 16939}] -> (m),
(h) - [:ATTEND {ban: "Yummi", pick: "Azir", kill: 6, death: 1, assistance: 9, cs: 357, vision: 68, gold: 16964, damage: 31002}] -> (m),
(i) - [:ATTEND {ban: "Aphelios", pick: "Kalista", kill: 2, death: 1, assistance: 9, cs: 330, vision: 78, gold: 16009, damage: 17016}] -> (m),
(j) - [:ATTEND {ban: "Draven", pick: "Ashe", kill: 1, death: 3, assistance: 12, cs: 32, vision: 154, gold: 9961, damage: 17137}] -> (m);


create (n:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 5, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2273});
match (m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 5, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2273}),
(t_blue:Team {name:"EDG"}),
(t_red:Team {name:"DRX"})
create (t_blue) - [:FIGHT_IN {side: "blue"}] -> (m), (t_red) - [:FIGHT_IN {side: "red"}] -> (m);

match
(a: Player {name: "Flandre"}),
(b: Player {name: "JieJie"}),
(c: Player {name: "Scout"}),
(d: Player {name: "Viper"}),
(e: Player {name: "Meiko"}),
(f: Player {name: "kingen"}),
(g: Player {name: "Pyosik"}),
(h: Player {name: "Zeka"}),
(i: Player {name: "Deft"}),
(j: Player {name: "Beryl"}),
(m:Match :QuarterFinals {mode: "Bo5", number_of_rounds: 5, win:"blue", date_time: datetime("2022-10-23T23:00"), duration: 2273})
create
(a) - [:ATTEND {ban: "Heimerdinger", pick: "Jax", kill: 0, death: 2, assistance: 4, cs: 318, vision: 28, gold: 14272, damage: 17932}] -> (m),
(b) - [:ATTEND {ban: "Aatrox", pick: "Sejuani", kill: 1, death: 4, assistance: 6, cs: 196, vision: 78, gold: 11303, damage: 8918}] -> (m),
(c) - [:ATTEND {ban: "Caitlyn", pick: "Akali", kill: 3, death: 6, assistance: 2, cs: 256, vision: 28, gold: 12449, damage: 21075}] -> (m),
(d) - [:ATTEND {ban: "Kalista", pick: "Aphelios", kill: 2, death: 3, assistance: 3, cs: 396, vision: 50, gold: 16806, damage: 24158}] -> (m),
(e) - [:ATTEND {ban: "Varus", pick: "Lulu", kill: 1, death: 3, assistance: 4, cs: 18, vision: 90, gold: 7954, damage: 2431}] -> (m),
(f) - [:ATTEND {ban: "Lucian", pick: "Fiora", kill: 2, death: 1, assistance: 3, cs: 346, vision: 39, gold: 15216, damage: 16129}] -> (m),
(g) - [:ATTEND {ban: "Azir", pick: "Viego", kill: 4, death: 2, assistance: 7, cs: 158, vision: 52, gold: 11295, damage: 10874}] -> (m),
(h) - [:ATTEND {ban: "Yummi", pick: "Sylas", kill: 2, death: 4, assistance: 7, cs: 310, vision: 41, gold: 17847, damage: 30002}] -> (m),
(i) - [:ATTEND {ban: "Renekton", pick: "Ezreal", kill: 2, death: 1, assistance: 7, cs: 403, vision: 53, gold: 18372, damage: 36504}] -> (m),
(j) - [:ATTEND {ban: "Gangplank", pick: "Karma", kill: 0, death: 1, assistance: 14, cs: 30, vision: 113, gold: 10664, damage: 12639}] -> (m);
