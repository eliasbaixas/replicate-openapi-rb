# Replicate::PredictionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **model** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **input** | [**PredictionResponseInput**](PredictionResponseInput.md) |  | [optional] |
| **logs** | **String** |  | [optional] |
| **output** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **started_at** | **Time** |  | [optional] |
| **completed_at** | **Time** |  | [optional] |
| **metrics** | [**TrainingResponseMetrics**](TrainingResponseMetrics.md) |  | [optional] |
| **urls** | [**ApiResponseUrls**](ApiResponseUrls.md) |  | [optional] |

## Example

```ruby
require 'replicate-openapi-rb'

instance = Replicate::PredictionResponse.new(
  id: null,
  model: null,
  version: null,
  input: null,
  logs: null,
  output: null,
  error: null,
  status: null,
  created_at: null,
  started_at: null,
  completed_at: null,
  metrics: null,
  urls: null
)
```

