region = "us-east-2"

namespace = "eg"

stage = "test"

name = "ssm-parameter-store"

tags = {
  ManagedBy = "Terraform"
}

parameter_write = [
  {
    name      = "/production/test/master/users"
    value     = "John,Todd"
    type      = "StringList"
    overwrite = "true"
  },
  {
    name      = "/production/test/master/password"
    value     = "somepassword"
    type      = "SecureString"
    overwrite = "true"
  },
  {
    name        = "/production/test/master/company"
    value       = "Amazon"
    type        = "String"
    overwrite   = "true"
    description = "Company name"
  }
]
