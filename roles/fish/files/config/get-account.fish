# Defined in - @ line 1
function get-account --description alias\ get-account=aws\ sts\ get-caller-identity\ --output\ text\ --query\ \'Account\'
	aws sts get-caller-identity --output text --query 'Account';
end
function get-account-auto -S --on-variable AWS_SESSION_TOKEN
	set -x AWS_ACCOUNT_ID (aws sts get-caller-identity --output text --query "Account")
end