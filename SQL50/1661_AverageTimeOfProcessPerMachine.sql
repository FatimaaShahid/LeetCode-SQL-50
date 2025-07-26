select machine_id,Round(AVG(end_time - start_time),3) as processing_time

from 
    (select machine_id,process_id,
    Max(CASE WHEN activity_type = "start" THEN timestamp END ) as start_time,
    MAX(CASE WHEN activity_type = "end" THEN timestamp END) as end_time
    from Activity
    group by machine_id,process_id)  as M
    group by machine_id;
