# Contributing

- [Contributing](#contributing)

If you would like to contribute to this demo, please follow the steps below:

1. Create your Jira ticket in the VCDLD project.
2. Create a new branch with the ID of your ticket followed by a short description of the change. For example, `VCDLD-1234/add-new-feature`.
3. Clone this repository to your local machine.
4. Create a new `Variable set` in HCP Terraform.
5. Run the following command to get your AWS Credentials (more information [here](https://docs.prod.secops.hashicorp.services/doormat/cli/#installation)):

```bash
doormat aws tf-push variable-set --account <account_name> --id <variable_set_id>
```
6. To start working on new features of the demo, first deploy it. To do this use the following command

```bash
make∫
