Sample command for load testing

#### choose different instance from `https://github.com/scalableinternetservices/utils`

1. SSH to AWS: `ssh -i Pickachu.pem ec2-user@ec2-52-32-198-148.us-west-2.compute.amazonaws.com`

2. Run testing : `tsung -f test.xml start`

3. Compile report: `cd /home/ec2-user/.tsung/log/20151111-0410` and ` tsung_stats.pl` to compile

4. Download the report file to local like `scp -r -i Pickachu.pem ec2-user@ec2-52-24-32-53.us-west-2.compute.amazonaws.com:/home/ec2-user/.tsung/log/20151116-0849 ./Pickachu/load_tests/results/`

=================================
### Load testing report

#### Single instance: 

only browse website
1. 20151111-0658: new user path, NGINX + Passenger

2. 20151111-0736: old user path, NGINX + Passenger

try login
1. 20151116-0849: old user path, NGINX + Passenger