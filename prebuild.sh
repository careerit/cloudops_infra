sed  "s,#PREFIX#,$(PREFIX)," terraform.tfvars.tpl > terraform.tfvars
sed -i "s,#LOCATION#,$(LOCATION)," terraform.tfvars

cat terraform.tfvars
