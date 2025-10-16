# Network architechture

---
VPC Network Architecture		Subnets	
US-East-1	                10.190.0.0/16
			
			
Public		            Public 1A	10.190.1.0/24
		                Public 1B	10.190.2.0/24
		                Public 1C	10.190.3.0/24
			
			
			
Private		            Private 1A	10.190.11.0/24
		                Private 1B	10.190.12.0/24
		                Private 1C	10.190.13.0/24
			
			
Private-DB		        Private 1A	10.190.101.0/24
		                Private 1B	10.190.102.0/24
		                Private 1C	10.190.103.0/24



In setting up a network for your VPC you should have a valid scheme that you understand and you can explain to someone. This is a best practice when working as a networker on a team.

---
### Link to doc:
    < https://docs.google.com/spreadsheets/d/1B6pJckKSalFT-Q0wDYN0Uq0dSD7tyDOgK-CHbXxCcxs/edit?usp=sharing >
    
**Network Scheme**
![](/week4/attachments/networkscheme.png)

As you grow in networking this scheme can grow without a problem!

Next step is binary:
Network -   11111111
Host -   00000000

Understanding binary is key in networking.

**High Score**
![](/week4/attachments/highscore.png)

Practice makes perfect!!!