# Replicate::PaginatedTrainingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;TrainingResponse&gt;**](TrainingResponse.md) |  | [optional] |

## Example

```ruby
require 'replicate-openapi-rb'

instance = Replicate::PaginatedTrainingResponse.new(
  _next: null,
  previous: null,
  results: null
)
```

