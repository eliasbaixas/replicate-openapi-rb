# Replicate::ApiResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **model** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **input** | [**ApiResponseInput**](ApiResponseInput.md) |  | [optional] |
| **logs** | **String** |  | [optional] |
| **error** | **Object** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **urls** | [**ApiResponseUrls**](ApiResponseUrls.md) |  | [optional] |

## Example

```ruby
require 'replicate-openapi-rb'

instance = Replicate::ApiResponse.new(
  id: null,
  model: null,
  version: null,
  input: null,
  logs: null,
  error: null,
  status: null,
  created_at: null,
  urls: null
)
```

