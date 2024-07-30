# ACT LOCALLY

Example of using act to run your github actions locally.

This action creates s3 bucket and upload the example.txt in the bucket.

1. set up your aws access key and secret creating an .env file (if you have an aws account).

2. act CLI following the [docs](https://nektosact.com/installation/index.html).

3. Run the code below in the terminal.

```sh
act -W .github/workflows/ci.local.yml push --secret-file .env

```

### Credits: https://github.com/nektos/act
