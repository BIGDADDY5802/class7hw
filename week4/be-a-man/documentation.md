# Windows bastion with linux internals

bastion host with internals documentation

This documentation is for the proper building of a bastion host with internals in a private subnet of your VPC in AWS!

 Create a VPC and more VPC, default vpc is not where you want your architecture.
	*	When creating VPC make sure you have a network schema that can be built upon, it should make sense to you and you should   	        be able to explain your scheme to your team so they can use it properly.
	*	Be sure you have at least 1 public and 1 private subnet as this architecture requires it

	*	After successful creation of VPC and more you must create a security group for your bastion host, RDP 3389 is the inbound 		rule
	*	Security Group for internal Linux server should only allow inbound from the Security group of the bastion server
		+	Ex: Bastion Host inbound port 3389
		+	internal Linux inbound - 80 - 22 -custom / bastion host
	*	this will only give the bastion the ability to see the webpage  or ssh into the terminal
	*	windows powershell is much different than git so be sure to use powershell commands to get access to the Linux servers 			terminal
	*	Now create a windows instance with a t3.large size because windows need a bit more ram than a Linux server
	*	Make sur and create a keypair for windows instance, you must decrypt password
	*	Log into the windows instance through rdp client
	*	Ensure you decrypt password and put it somewhere safe
	*	Log into instance and paste

	*	Launch a Linux server and make sure to create a key pair for it
	*	Enable public dns, the only IP that can access is the IP of the bastion host security group
	*	place user data and launch

	*	Give your instance a few minutes then paste public dns in windows instance. See if the instance can access the webpage.
	*	After a success you should the begin your ssh in by going to the "terminal" in the windows instance
	*	In the event of a failure, most likely it is the user data script as to why you can't get in. As long as you have chosen 		the correct security group configuration

		+	Security Group for internal Linux server should only allow inbound from the Security group of the bastion server
		+	Ex: Bastion Host inbound port 3389
		+	internal Linux inbound - 80 - 22 -custom / bastion host

	*	Now as we get ready to ssh into our instance we have one thing to check. Key permissions: As you begin to login terminal will tell you if the key has too many permissions.

	*	$ssh -i "internal-linux.pem.txt" ec2-user@ec2-18-221-53-122.us-east-2.compute.amazonaws.com

	*	if you get the public gsassi error in terminal you should then run these commands
		+	$icacls.exe linux-1-key.pem.txt /reset
			icacls.exe linux-1-key.pem.txt /grant:r "$($env:username):(R)"
			icacls.exe linux-1-key.pem.txt /inheritance:r
	*	These  icacls.exe commands replace $ "chmod 400" ion git
	*	Then you should be able to log into your instance
	*	(remember to add .txt to the key)
