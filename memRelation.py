name_lists = [
    ["Wayward", "Tian", "Knight", "JackeyLove", "Mark"],
    ["Impact", "Inspired", "Jojopyun", "Kaori", "Vulcan"],
    ["Ssumday", "Closer", "Abbedagge", "FBI", "huhi"],
    ["Robo", "Croc", "Tinowns", "Brance", "Ceos"],
    ["Evi", "Steal", "Yaharong", "Yutapon", "Harp"],
    ["Fudge", "Blaber", "Jensen", "Berserk", "Zven"],
    ["Hasmed", "BeanJ", "Froggy", "Shogun", "Taki"],
    ["Kiaya", "Levi", "Kati", "Sty1e", "Bie"],
    ["ADD", "Grell", "Seiya", "Gavotto", "Jelly"],
    ["Likai", "HuSha", "Minji", "Wako", "Kino", "Liang", "Top"],
    ["StarScreen", "Ferret", "Serin", "HolyPhoenix", "Farfetch"]
]

team_list = ["TES", "EG", "100T", "LLL", "DFM", "C9", "SGB", "GAM", "ISG", "BYG", "IW"]

with open("teams.txt", 'w') as f:
    index = -1
    for names in name_lists:
        index += 1
        f.writelines("create(n: Player {name: \"" + names[0] + "\", role: \"Top\"});\n")
        f.writelines("match (n: Player {name: \"" + names[0] + "\"}), (t:Team {name: \"" + team_list[
            index] + "\"}) create (n)-[:IS_MEMBER_OF]->(t); \n")
        f.writelines("create(n: Player {name: \"" + names[1] + "\", role: \"Jungle\"});\n")
        f.writelines("match (n: Player {name: \"" + names[1] + "\"}), (t:Team {name: \"" + team_list[
            index] + "\"}) create (n)-[:IS_MEMBER_OF]->(t); \n")
        f.writelines("create(n: Player {name: \"" + names[2] + "\", role: \"Mid\"});\n")
        f.writelines("match (n: Player {name: \"" + names[2] + "\"}), (t:Team {name: \"" + team_list[
            index] + "\"}) create (n)-[:IS_MEMBER_OF]->(t); \n")
        f.writelines("create(n: Player {name: \"" + names[3] + "\", role: \"ADC\"});\n")
        f.writelines("match (n: Player {name: \"" + names[3] + "\"}), (t:Team {name: \"" + team_list[
            index] + "\"}) create (n)-[:IS_MEMBER_OF]->(t); \n")
        f.writelines("create(n: Player {name: \"" + names[4] + "\", role: \"Sup\"});\n")
        f.writelines("match (n: Player {name: \"" + names[4] + "\"}), (t:Team {name: \"" + team_list[
            index] + "\"}) create (n)-[:IS_MEMBER_OF]->(t); \n")
        if len(names) > 5:
            f.writelines("create(n: Player {name: \"" + names[5] + "\", role: \"" + names[6] + "\"});\n")
            f.writelines("match (n: Player {name: \"" + names[5] + "\"}), (t:Team {name: \"" + team_list[
                index] + "\"}) create (n)-[:IS_MEMBER_OF]->(t); \n")
        f.writelines("\n")
