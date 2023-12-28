# Replicate::TrainingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completed_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **error** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **input** | [**ApiResponseInput**](ApiResponseInput.md) |  | [optional] |
| **logs** | **String** |  | [optional] |
| **metrics** | [**TrainingResponseMetrics**](TrainingResponseMetrics.md) |  | [optional] |
| **output** | [**TrainingResponseOutput**](TrainingResponseOutput.md) |  | [optional] |
| **started_at** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |
| **urls** | [**ApiResponseUrls**](ApiResponseUrls.md) |  | [optional] |
| **model** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |

## Example

```ruby
require 'replicate-openapi-rb'

instance = Replicate::TrainingResponse.new(
  completed_at: null,
  created_at: null,
  error: null,
  id: null,
  input: null,
  logs: null,
  metrics: null,
  output: null,
  started_at: null,
  status: null,
  urls: null,
  model: null,
  version: null
)
```

