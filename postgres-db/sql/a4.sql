select f.dest ,sum(f.dep_delay::numeric + f.arr_delay::numeric) max_delay from flights f 
group by 1
order by 2 desc
limit 1;