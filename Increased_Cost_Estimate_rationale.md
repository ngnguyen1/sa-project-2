
# How I come up with an estimate cost of $18,092.89

## Added new services

- AWS ElastiCache: Improving system perforamance
- AWS WAF: Securing our APIs from common vulnerabilities
- API Gateway: Securing APIs endpoints
- AWS Simple Queue Service:

## Multi region setup

I also using a totally new AZ in us-west-2 to add disaster recovery when us-east-1 failure.

## Changing the current services

1. Web Server inscreased from 12 to 14
2. Application Server was inscreased from 14 to 18
3. DB storage has increased to handle higher load.
4. AWS Route 53 has increased to 1 check after every half of hour.
