You can start a pipeline with the `pipe start` command. Here's an example:

    $ pipe start
    Pipeline started: demo
    Please check the CodePipeline console for the status.
    CodePipeline Console: https://us-west-2.console.aws.amazon.com/codesuite/codepipeline/pipelines/demo/view
    Pipeline cli: aws codepipeline get-pipeline-execution --pipeline-execution-id 02579d64-9271-4edc-aa45-bc9629d732bb --pipeline-name demo
    $

## Specifying Code Branch

If you would like start a build using a specific code branch you can use the `--branch` or `-b` option.  Example:

    pipe start -b feature-branch

## AWS CLI Equivalent

The `pipe start` command is a simple wrapper to the AWS API with the ruby sdk. You can also start pipelines with the `aws codepipeline` cli.  Here's the equivalent CLI command:

    aws codepipeline start-pipeline-execution --name demo
