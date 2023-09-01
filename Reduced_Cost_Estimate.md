
# How I reduced the estimate to $5,477.71

## New Services

None

## Changes current services

1. Web Server: number of instances reduced from 12 to 10
2. Application Server: number of instances also reduced from 14 to 12
=> Reducing EC2 instances will not have a significant impact on capacity on considering
sinc we have autoscaling enabled.
3. Database:

   * No need backup storage anymore
   * Changed pricing model from on-demand to 1 year reserved with no upfront payment

4. AWS Route 53: Health check now reduced from 1 per hour to 1 per day. Since we can cover
this by looking into cloudwatch.
5. AWS NAT Gateways reduce data processing capacity of natgateways from 1TB to 500 GB.
Since we can bypass data flow between S3 and your private subnets by using VPC gateway
endpoints. This should significantly reduce the data bandwidth.
