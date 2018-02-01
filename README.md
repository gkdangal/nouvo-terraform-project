#### Creating three private and three public subnet using Terraform
<!-- -->
##### Teraform Installation
Download teraform from terraform website and extract it with the help of unzip
<!-- -->
$ wget https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip
<!-- -->
$ unzip terraform_0.11.3_linux_amd64.zip
<!-- -->
$ mv terraform /usr/local/bin
<!-- -->
##### To test Terraform
$ terraform -version 
<!-- -->
Output will be like this
<!-- -->
Terraform v0.11.3
<!-- -->
##### Setting AWS credentials 
$ mkdir ~/.aws
<!-- -->
$ vim ~/.aws/credentials
<!-- Add these line on this file -->
<!-- -->
[terraform]
aws_access_key_id = Amazon-Access-Id-Here
<!-- -->
aws_secret_access_key = Amazon-Access-Key-Here
<!-- -->
##### Download terrform git files 
$ git clone https://github.com/gkdangal/nouvo-terraform-project.git
###### Initialize the terraform
$ terraform init
<!-- -->
$ terraform -version
<!-- -->
Terraform v0.11.3
<!-- -->
provider.aws v1.8.0
<!-- -->
##### Test and Apply
<!-- -->
$ terraform plan
<!-- -->
We have to specify our aws profile 
<!-- -->
$ terraform apply
<!-- -->
We have to specify our aws profile 
<!-- -->
Output files is included on Output folder
<!-- -->
####### Conclusion
<!-- -->
We can successfully create three private and 3 public subnet with in one vpc

















