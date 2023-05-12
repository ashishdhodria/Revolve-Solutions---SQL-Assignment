select p.manufacturer , sum(f.flight) total_flights from flights f 
join planes p on f.tailnum = p.tailnum 
group by 1
order by 2 desc
limit 1;
