Sample command for load testing

#### choose different instance from `https://github.com/scalableinternetservices/utils`

0. copy xml to AWS: `scp -r -i Pickachu.pem ./Pickachu/load_tests/create_pickup.xml ec2-user@ec2-52-32-243-141.us-west-2.compute.amazonaws.com:`

1. SSH to AWS: `ssh -i Pickachu.pem ec2-user@ec2-52-32-243-141.us-west-2.compute.amazonaws.com`

2. Run testing : `tsung -f test.xml start`

3. Compile report: `cd /home/ec2-user/.tsung/log/20151120-1002` and ` tsung_stats.pl` to compile

4. Download the report file to local like `scp -r -i Pickachu.pem ec2-user@ec2-52-32-243-141.us-west-2.compute.amazonaws.com:/home/ec2-user/.tsung/log/20151122-0021 ./Pickachu/load_tests/results/`


=================================
### Load testing report


#### Single instance: 
#### no bug report:
1. 20151121-2238: only 1 user login

2. 20151121-2351: create pick up, but not shown yet

3. 20151122-0002: create pick up, 


##### old report, has bug
only browse website
1. 20151111-0658: new user path, NGINX + Passenger

2. 20151111-0736: old user path, NGINX + Passenger

try login
1. 20151116-0849: old user path, NGINX + Passenger

try login + create pickup
1. 20151118-0831: old user path, NGINX + Passenger
2. 20151121-2249
3. 20151121-2315
4. 20151121-2344

