# Class Notes

This repo deploys a highly available, fault tolerant infrastructure.
The auto scaling group keeps everything running when the instances become 
unhealthy. Launches another instance then destroys the unhealthy instance to
keep high availabiltity. Also scales in when traffic slows down with a target track scaling policy.

-   Keep in mind that this infrastructures security is a 1 on a security scale.

The load balancer is there to evenly distribute traffic to the registered targets.
Launches instances in 3 different availabity zones.

Instances are configured to launch in a private subnet.
There is also a key pair file to configure your key pair locally, as well. 

Please use this code with caution, it's top heavy.

![](/week9/attachments/melons.png)

