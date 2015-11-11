Sample command for load testing

1. SSH to AWS: `ssh -i Pickachu.pem ec2-user@ec2-52-32-198-148.us-west-2.compute.amazonaws.com`

2. Run testing : `tsung -f test.xml start`

3. Compile report: `cd /home/ec2-user/.tsung/log/20151111-0410` and ` tsung_stats.pl`
