# terraform-eks

Install kubectl 

########### To generate the .kube/config file run the below command  ###########

aws eks update-kubeconfig --name eks-demo-cluster --region us-east-2    


To create Private EKS never forget to create NAT Gateway and attach it to the Private Route Table of the VPC.
