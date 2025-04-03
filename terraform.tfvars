############################################
#         Google Global Variables          #
############################################


platformName= "virginia"
projectId= "slovink-group-20122024"
projectName= "Slovink Hyperscaler"
region= "us-east1"
zone= "us-east1"
environment= "prod"


############################################
#              Google Network              #
############################################

routing_mode= "REGIONAL"
mtu= "1460"



############################################
#       Google Network  Subnets            #
############################################

subnet_names= ["kubernetes-subnet", "management-subnet"]
ip_cidr_range= ["10.10.1.0/24", "10.10.5.0/24"]





