backend_file := $(shell find . -type f -iname *.tfbackend)

# assumes that we have already a profile named thevpnbeast-root in AWS CLI config
export AWS_PROFILE := thevpnbeast-root

init: $(backend_file)
	terraform init -input=false -backend-config=$(backend_file)

plan: init
	terraform plan -input=false

apply: init plan
	terraform apply -input=false -auto-approve

destroy: init plan
	terraform destroy -auto-approve

validate:
	terraform validate

fmt:
	terraform fmt -check -diff -recursive .

tflint_version:
	tflint --version

tflint_init:
	tflint --init

tflint_run:
	tflint -f compact