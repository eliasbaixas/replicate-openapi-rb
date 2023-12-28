# Replicate::PaginatedPredictionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;PredictionResponse&gt;**](PredictionResponse.md) |  | [optional] |

## Example

```ruby
require 'replicate-openapi-rb'

instance = Replicate::PaginatedPredictionResponse.new(
  _next: null,
  previous: null,
  results: null
)
```

