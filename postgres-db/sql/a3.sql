select p.model , round(sum(f."hour"::numeric + f."minute"::numeric  / 60), 2) total_hours from flights f 
join planes p on f.tailnum = p.tailnum 
group by 1
order by 2 desc
limit 1;

