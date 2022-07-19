/*Query 4*/
SELECT  channel, count(*) AS no_of_times_channel_used
FROM web_events
GROUP BY channel;
