// 1. On Saturday night, Team GEN and Team DK showed a really wonderful performance in 5 games.
// In each game, which lane of each team contribute the highest damage for their team?
MATCH (p:Player) - [:IS_MEMBER_OF] -> (t:Team) - [:FIGHT_IN] -> (m:Match {date_time: datetime('2022-10-22T23:00')}) <- [a:ATTEND] - (p)
WITH p, t, m, a
ORDER BY m.number_of_round, a.damage DESC
RETURN m.number_of_rounds, t.name, collect(p.name)[..1] AS topOne ORDER BY m.number_of_rounds, t.name;

// 2. Next week, GEN will fight with DRX. Assume you are coach of DRX, try to find the champion which is picked most frequently by GEN?
MATCH (p:Player) - [:IS_MEMBER_OF] -> (t:Team {name: 'GEN'}) - [:FIGHT_IN] -> (m:Match) <- [a:ATTEND] - (p)
RETURN a.pick, count(a) AS num ORDER BY num DESC;

// Before next match, you want to analyse which champions are stronger in this patch. So,
// 3. you want to know which champions were usually be banned
MATCH (m:Match) <- [a:ATTEND] - ()
RETURN a.ban, count(a) AS num ORDER BY num DESC;

// 4. you want to know which champions have higher win rate (The champion should be picked more than once)
MATCH () <- [a:ATTEND] - ()
WITH a.pick AS aPick, count(a) AS num
WHERE num > 1
MATCH (p:Player) - [:IS_MEMBER_OF] -> (t:Team) - [f:FIGHT_IN] -> (m:Match) <- [a] - (p)
WHERE f.side = m.win AND a.pick = aPick
RETURN a.pick, round(toFloatOrNull(count(a))/toFloatOrNull(num),2) AS win_rate ORDER BY win_rate DESC;

// 5. Sort the players by DPM (damage per minute) in all games.
MATCH (p:Player) - [:IS_MEMBER_OF] -> (t:Team) - [:FIGHT_IN] -> (m:Match) <- [a:ATTEND] - (p)
RETURN p.name, p.role, t.name, round((sum(a.damage) / toFloatOrNull(sum(m.duration)) * 60), 2) as DPM ORDER BY DPM DESC;


// 6. Is there big gape of vision score between teams in Quarter Finals and teams which are eliminated in Play-in?
// Choose MAD and DK to compare.
MATCH (p:Player) - [:IS_MEMBER_OF] -> (t:Team) - [:FIGHT_IN] -> (m:Match) <- [a:ATTEND] - (p)
WHERE t.name = "T1" OR t.name = "MAD"
RETURN t.name AS team, round(sum(a.vision)/toFloatOrNull(sum(m.duration)) * 60,3) AS VSPM;

// 7. Who is the most important role to control vision in a team to except for support? Mid or jungle?
MATCH (m:Match) <- [a:ATTEND] - (p)
RETURN p.role AS role, round(avg(a.vision), 2) AS avg_vision_score ORDER BY avg_vision_score DESC LIMIT 3;

// 8. According to KDA ((kill + assistance) / death), who is the best player in s12 world championship?
MATCH (p:Player) - [:IS_MEMBER_OF] -> (t:Team) - [:FIGHT_IN] -> (m:Match) <- [a:ATTEND] - (p)
RETURN p.name, (sum(a.kill) + sum(a.assistance))/sum(a.death) as KDA ORDER BY KDA DESC;

// 9. Sort the teams by W-L (win-lose).
match (t:Team)
optional MATCH (t)-[f1:FIGHT_IN]->(m1:Match)
 where f1.side = m1.win
with t, count(m1) as win
with t, collect(win) as cwin
optional MATCH (t)-[f:FIGHT_IN]->(m:Match)
 where f.side <> m.win
unwind cwin as win
return t.name, win, count(m) as lose ORDER BY win DESC, lose ASC;

// 10. showed the attribute of player in radar chart.
// attributes: KDA, DPM, GPM, KP%, DMG%, Damage Gold Conversion Rate

MATCH (p:Player) - [:IS_MEMBER_OF] -> (t:Team) - [:FIGHT_IN] -> (m:Match) <- [a:ATTEND] - (p)
with t, sum(a.kill) as team_ka, sum(a.damage) as team_dmg, sum(a.gold) as team_gold
MATCH (p:Player) - [:IS_MEMBER_OF] -> (t) - [:FIGHT_IN] -> (m) <- [a:ATTEND] - (p)
WHERE p.name = "Gala"
RETURN
  p.name,
  (sum(a.kill) + sum(a.assistance))/sum(a.death) as KDA,
  sum(a.damage) / toFloatOrNull(sum(m.duration)) * 60 as DPM,
  sum(a.gold) / toFloatOrNull(sum(m.duration)) * 60 as GPM,
  sum(a.kill + a.assistance)/toFloatOrNull(team_ka) as KP_Percent,
  sum(a.damage)/toFloatOrNull(team_dmg) as DMG_Percent,
  (sum(a.damage)/toFloatOrNull(team_dmg))/(sum(a.gold)/ toFloatOrNull(team_gold)) as DGCR;

MATCH (p:Player) - [:IS_MEMBER_OF] -> (t:Team) - [:FIGHT_IN] -> (m:Match) <- [a:ATTEND] - (p)
with t, sum(a.kill) as team_ka, sum(a.damage) as team_dmg, sum(a.gold) as team_gold
MATCH (p:Player) - [:IS_MEMBER_OF] -> (t) - [:FIGHT_IN] -> (m) <- [a:ATTEND] - (p)
WHERE p.role = "ADC"
WITH
  (sum(a.kill) + sum(a.assistance))/sum(a.death) as KDA,
  sum(a.damage) / toFloatOrNull(sum(m.duration)) * 60 as DPM,
  sum(a.gold) / toFloatOrNull(sum(m.duration)) * 60 as GPM,
  sum(a.kill + a.assistance)/toFloatOrNull(team_ka) as KP_Percent,
  sum(a.damage)/toFloatOrNull(team_dmg) as DMG_Percent,
  (sum(a.damage)/toFloatOrNull(team_dmg))/(sum(a.gold)/ toFloatOrNull(team_gold)) as DGCR
RETURN
 max(KDA) as KDA, max(DPM) as DPM, max(GPM) as GPM, max(KP_Percent) as KP_Percent, max(DMG_Percent) as DMG_Percent, max(DGCR) as DGCR;


