
The Canadian classifier sucks. Here's what I've tried to fix it, fixes that are idiosyncratic to the Canadian model.

1. Add data from the database to the seeds file by ID, using ad IDs that Mike Wise at the CBC gave me. 

````
DATABASE_URL="postgres:///facebook_ads" pipenv run ./classify add_seeds_from_id en-CA
````

2. Add data from the database to the seeds file by advertiser name, using advertiser names I picked out.
````
DATABASE_URL="postgres:///facebook_ads" pipenv run ./classify add_seeds_from_advertiser en-CA
````

3. Then retraining the model from scratch again. (build, classify --every)

Results (5/16/18)
-----------------
746 pre-rebuild; 
1131 afterwards with just the additional seeds via Mike Wise's IDs
1259 with Mike Wise's ids AND advertisers added to seeds

But nevertheless, there are a TON of ads from Elementary Educators and North99 etc. that are totally political. Not sure why they're not getting picked up.