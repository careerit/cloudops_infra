echo $PREFIX 
echo $LOCATION
echo $VMPASSWORD
echo $ENVIRONMENT

sed  "s,#PREFIX#,$PREFIX," terraform.tfvars.tpl > terraform.tfvars
sed -i "s,#LOCATION#,$LOCATION," terraform.tfvars
sed -i "s,#VMPASSWORD#,$VMPASSWORD," terraform.tfvars
cat terraform.tfvars
