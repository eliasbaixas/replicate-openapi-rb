# Replicate::PredictionsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **input** | **Object** | The model&#39;s input as a JSON object. The input schema depends on what model you are running. To see the available inputs, click the \&quot;API\&quot; tab on the model you are running or [get the model version](#models.versions.get) and look at its &#x60;openapi_schema&#x60; property. For example, [stability-ai/sdxl](https://replicate.com/stability-ai/sdxl) takes &#x60;prompt&#x60; as an input.  Files should be passed as HTTP URLs or data URLs.  Use an HTTP URL when:  - you have a large file &gt; 256kb - you want to be able to use the file multiple times - you want your prediction metadata to be associable with your input files  Use a data URL when:  - you have a small file &lt;&#x3D; 256kb - you don&#39;t want to upload and host the file somewhere - you don&#39;t need to use the file again (Replicate will not store it)  | [optional] |
| **stream** | **Boolean** | Request a URL to receive streaming output using [server-sent events (SSE)](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events).  If the requested model version supports streaming, the returned prediction will have a &#x60;stream&#x60; entry in its &#x60;urls&#x60; property with an HTTPS URL that you can use to construct an [&#x60;EventSource&#x60;](https://developer.mozilla.org/en-US/docs/Web/API/EventSource).  | [optional] |
| **version** | **String** | The ID of the model version that you want to run. | [optional] |
| **webhook** | **String** | An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the [get prediction](#predictions.get) operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once.  | [optional] |
| **webhook_events_filter** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'replicate-openapi-rb'

instance = Replicate::PredictionsCreateRequest.new(
  input: null,
  stream: null,
  version: null,
  webhook: null,
  webhook_events_filter: null
)
```

