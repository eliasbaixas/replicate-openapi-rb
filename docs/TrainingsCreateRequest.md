# Replicate::TrainingsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | **String** | A string representing the desired model to push to in the format &#x60;{destination_model_owner}/{destination_model_name}&#x60;. This should be an existing model owned by the user or organization making the API request. If the destination is invalid, the server will return an appropriate 4XX response.  | [optional] |
| **input** | **Object** | An object containing inputs to the Cog model&#39;s &#x60;train()&#x60; function.  | [optional] |
| **webhook** | **String** | An HTTPS URL for receiving a webhook when the training completes. The webhook will be a POST request where the request body is the same as the response body of the [get training](#trainings.get) operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. | [optional] |

## Example

```ruby
require 'replicate-openapi-rb'

instance = Replicate::TrainingsCreateRequest.new(
  destination: null,
  input: null,
  webhook: null
)
```

