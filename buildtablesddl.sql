CREATE TABLE IF NOT EXISTS airlinesentimentkudu 
(tweet_id STRING, `unixtime` STRING, friends_count STRING, hashtags STRING, listed_count STRING, 
source STRING, favourites_count STRING, 
statuses_count STRING, followers_count STRING, `location` STRING, msg STRING, time STRING, airline STRING, 
user_name STRING, placename STRING, retweet_count STRING, 
user_mentions_name STRING, geo STRING, urls STRING, countryCode STRING, user_url STRING,
place STRING, coordinates STRING, handle STRING, profile_image_url STRING, time_zone STRING,
 ext_media STRING, user_description STRING,
PRIMARY KEY (tweet_id, `unixtime`)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');
