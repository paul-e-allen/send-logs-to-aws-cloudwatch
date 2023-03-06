# send-logs-to-aws-cloudwatch

This example shows how to run the AWS CloudWatch logs agent in a Docker container in order to send logs from a local environment to AWS. 

This is useful if you are generating a lot of logs locally and want to use a tool like CloudWatch Logs Insights to query those logs.

The example configuration monitors the `/logs` directory within the container and sends everything in that directory to CloudWatch.

## Requirements
- `docker`
- `docker-compose`

## Run

1. Create the credentials file:
  ```
  $ cp logger/aws.credentials.template logger/aws.credentials
  ```
2. Add valid credentials to the `AmazonCloudWatchAgent` profile in `logger/aws.credentials`.
3. Start the containers:
  ```
  $ ./go.sh
  ```
4. From within the `awscli` container, create a log file entry:
  ```
  ec2-user@2b4fa1d76296:/mounted-files$ echo "hello world" > /logs/test.log
  ```

## Shut Down
```
$ docker-compose down
```