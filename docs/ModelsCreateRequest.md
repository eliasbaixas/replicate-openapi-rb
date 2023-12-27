# Replicate::ModelsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cover_image_url** | **String** | A URL for the model&#39;s cover image. This should be an image file. | [optional] |
| **description** | **String** | A description of the model. | [optional] |
| **github_url** | **String** | A URL for the model&#39;s source code on GitHub. | [optional] |
| **hardware** | **String** | The SKU for the hardware used to run the model. Possible values can be retrieved from the &#x60;hardware.list&#x60; endpoint. |  |
| **license_url** | **String** | A URL for the model&#39;s license. | [optional] |
| **name** | **String** | The name of the model. This must be unique among all models owned by the user or organization. |  |
| **owner** | **String** | The name of the user or organization that will own the model. This must be the same as the user or organization that is making the API request. In other words, the API token used in the request must belong to this user or organization. |  |
| **paper_url** | **String** | A URL for the model&#39;s paper. | [optional] |
| **visibility** | **String** | Whether the model should be public or private. A public model can be viewed and run by anyone, whereas a private model can be viewed and run only by the user or organization members that own the model. |  |

## Example

```ruby
require 'replicate-openapi-rb'

instance = Replicate::ModelsCreateRequest.new(
  cover_image_url: null,
  description: null,
  github_url: null,
  hardware: null,
  license_url: null,
  name: null,
  owner: null,
  paper_url: null,
  visibility: null
)
```

