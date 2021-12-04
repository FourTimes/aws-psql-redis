          terraform init \
          -backend-config="bucket=myweb-098" \
          -backend-config="key=infra-code/tfstate.tfstate" \
          -backend-config="region=us-east-1" \
          -backend=true
	  terraform  plan -var-file=config.tfvars
	  terraform  apply -var-file=config.tfvars -auto-approve
