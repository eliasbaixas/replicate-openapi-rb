# Replicate::DefaultApi

All URIs are relative to *https://api.replicate.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**collections_get**](DefaultApi.md#collections_get) | **GET** /v1/collections/{collection_slug} | Get a collection of models |
| [**collections_list**](DefaultApi.md#collections_list) | **GET** /v1/collections | List collections of models |
| [**hardware_list**](DefaultApi.md#hardware_list) | **GET** /v1/hardware | List available hardware for models |
| [**models_create**](DefaultApi.md#models_create) | **POST** /v1/models | Create a model |
| [**models_get**](DefaultApi.md#models_get) | **GET** /v1/models/{model_owner}/{model_name} | Get a model |
| [**models_list**](DefaultApi.md#models_list) | **GET** /v1/models | List public models |
| [**models_versions_delete**](DefaultApi.md#models_versions_delete) | **DELETE** /v1/models/{model_owner}/{model_name}/versions/{version_id} | Delete a model version |
| [**models_versions_get**](DefaultApi.md#models_versions_get) | **GET** /v1/models/{model_owner}/{model_name}/versions/{version_id} | Get a model version |
| [**models_versions_list**](DefaultApi.md#models_versions_list) | **GET** /v1/models/{model_owner}/{model_name}/versions | List model versions |
| [**predictions_cancel**](DefaultApi.md#predictions_cancel) | **POST** /v1/predictions/{prediction_id}/cancel | Cancel a prediction |
| [**predictions_create**](DefaultApi.md#predictions_create) | **POST** /v1/predictions | Create a prediction |
| [**predictions_get**](DefaultApi.md#predictions_get) | **GET** /v1/predictions/{prediction_id} | Get a prediction |
| [**predictions_list**](DefaultApi.md#predictions_list) | **GET** /v1/predictions | List predictions |
| [**trainings_cancel**](DefaultApi.md#trainings_cancel) | **POST** /v1/trainings/{training_id}/cancel | Cancel a training |
| [**trainings_create**](DefaultApi.md#trainings_create) | **POST** /v1/models/{model_owner}/{model_name}/versions/{version_id}/trainings | Create a training |
| [**trainings_get**](DefaultApi.md#trainings_get) | **GET** /v1/trainings/{training_id} | Get a training |
| [**trainings_list**](DefaultApi.md#trainings_list) | **GET** /v1/trainings | List trainings |


## collections_get

> collections_get(collection_slug)

Get a collection of models

Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/collections/super-resolution ```  The response will be a collection object with a nested list of the models in that collection:  ```json {   \"name\": \"Super resolution\",   \"slug\": \"super-resolution\",   \"description\": \"Upscaling models that create high-quality images from low-quality images.\",   \"models\": [...] } ``` 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
collection_slug = 'collection_slug_example' # String | The slug of the collection, like `super-resolution` or `image-restoration`. See [replicate.com/collections](https://replicate.com/collections). 

begin
  # Get a collection of models
  api_instance.collections_get(collection_slug)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->collections_get: #{e}"
end
```

#### Using the collections_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> collections_get_with_http_info(collection_slug)

```ruby
begin
  # Get a collection of models
  data, status_code, headers = api_instance.collections_get_with_http_info(collection_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->collections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_slug** | **String** | The slug of the collection, like &#x60;super-resolution&#x60; or &#x60;image-restoration&#x60;. See [replicate.com/collections](https://replicate.com/collections).  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## collections_list

> collections_list

List collections of models

Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/collections ```  The response will be a paginated JSON list of collection objects:  ```json {   \"next\": \"null\",   \"previous\": null,   \"results\": [     {       \"name\": \"Super resolution\",       \"slug\": \"super-resolution\",       \"description\": \"Upscaling models that create high-quality images from low-quality images.\"     }   ] } ``` 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new

begin
  # List collections of models
  api_instance.collections_list
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->collections_list: #{e}"
end
```

#### Using the collections_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> collections_list_with_http_info

```ruby
begin
  # List collections of models
  data, status_code, headers = api_instance.collections_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->collections_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## hardware_list

> <Array<HardwareList200ResponseInner>> hardware_list

List available hardware for models

Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/hardware ```  The response will be a JSON array of hardware objects:  ```json [     {\"name\": \"CPU\", \"sku\": \"cpu\"},     {\"name\": \"Nvidia T4 GPU\", \"sku\": \"gpu-t4\"},     {\"name\": \"Nvidia A40 GPU\", \"sku\": \"gpu-a40-small\"},     {\"name\": \"Nvidia A40 (Large) GPU\", \"sku\": \"gpu-a40-large\"}, ] ``` 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new

begin
  # List available hardware for models
  result = api_instance.hardware_list
  p result
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->hardware_list: #{e}"
end
```

#### Using the hardware_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<HardwareList200ResponseInner>>, Integer, Hash)> hardware_list_with_http_info

```ruby
begin
  # List available hardware for models
  data, status_code, headers = api_instance.hardware_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<HardwareList200ResponseInner>>
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->hardware_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;HardwareList200ResponseInner&gt;**](HardwareList200ResponseInner.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## models_create

> models_create(models_create_request)

Create a model

Create a model.  Example cURL request:  ```console curl -s -X POST \\   -H \"Authorization: Token <paste-your-token-here>\" \\   -d '{\"owner\": \"alice\" \"name\": \"my-model\", \"description\": \"An example model\", \"visibility\": \"public\", \"hardware\": \"cpu\"}' \\   https://api.replicate.com/v1/models ```  The response will be a model object in the following format:  ```json {   \"url\": \"https://replicate.com/alice/my-model\",   \"owner\": \"alice\",   \"name\": \"my-model\",   \"description\": \"An example model\",   \"visibility\": \"public\",   \"github_url\": null,   \"paper_url\": null,   \"license_url\": null,   \"run_count\": 0,   \"cover_image_url\": null,   \"default_example\": null,   \"latest_version\": null, } ``` 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
models_create_request = Replicate::ModelsCreateRequest.new({hardware: 'hardware_example', name: 'name_example', owner: 'owner_example', visibility: 'public'}) # ModelsCreateRequest | 

begin
  # Create a model
  api_instance.models_create(models_create_request)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_create: #{e}"
end
```

#### Using the models_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> models_create_with_http_info(models_create_request)

```ruby
begin
  # Create a model
  data, status_code, headers = api_instance.models_create_with_http_info(models_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **models_create_request** | [**ModelsCreateRequest**](ModelsCreateRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## models_get

> models_get(model_owner, model_name)

Get a model

Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/models/replicate/hello-world ```  The response will be a model object in the following format:  ```json {   \"url\": \"https://replicate.com/replicate/hello-world\",   \"owner\": \"replicate\",   \"name\": \"hello-world\",   \"description\": \"A tiny model that says hello\",   \"visibility\": \"public\",   \"github_url\": \"https://github.com/replicate/cog-examples\",   \"paper_url\": null,   \"license_url\": null,   \"run_count\": 5681081,   \"cover_image_url\": \"...\",   \"default_example\": {...},   \"latest_version\": {...}, } ```  The `cover_image_url` string is an HTTPS URL for an image file. This can be:  - An image uploaded by the model author. - The output file of the example prediction, if the model author has not set a cover image. - The input file of the example prediction, if the model author has not set a cover image and the example prediction has no output file. - A generic fallback image.  The `default_example` object is a [prediction](#predictions.get) created with this model.  The `latest_version` object is the model's most recently pushed [version](#models.versions.get). 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
model_owner = 'model_owner_example' # String | The name of the user or organization that owns the model. 
model_name = 'model_name_example' # String | The name of the model. 

begin
  # Get a model
  api_instance.models_get(model_owner, model_name)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_get: #{e}"
end
```

#### Using the models_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> models_get_with_http_info(model_owner, model_name)

```ruby
begin
  # Get a model
  data, status_code, headers = api_instance.models_get_with_http_info(model_owner, model_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_owner** | **String** | The name of the user or organization that owns the model.  |  |
| **model_name** | **String** | The name of the model.  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## models_list

> models_list

List public models

Get a paginated list of public models.  Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/models ```  The response will be a paginated JSON array of model objects:  ```json {   \"next\": null,   \"previous\": null,   \"results\": [     {       \"url\": \"https://replicate.com/replicate/hello-world\",       \"owner\": \"replicate\",       \"name\": \"hello-world\",       \"description\": \"A tiny model that says hello\",       \"visibility\": \"public\",       \"github_url\": \"https://github.com/replicate/cog-examples\",       \"paper_url\": null,       \"license_url\": null,       \"run_count\": 5681081,       \"cover_image_url\": \"...\",       \"default_example\": {...},       \"latest_version\": {...}     }   ] } ```  The `cover_image_url` string is an HTTPS URL for an image file. This can be:  - An image uploaded by the model author. - The output file of the example prediction, if the model author has not set a cover image. - The input file of the example prediction, if the model author has not set a cover image and the example prediction has no output file. - A generic fallback image. 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new

begin
  # List public models
  api_instance.models_list
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_list: #{e}"
end
```

#### Using the models_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> models_list_with_http_info

```ruby
begin
  # List public models
  data, status_code, headers = api_instance.models_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## models_versions_delete

> models_versions_delete(model_owner, model_name, version_id)

Delete a model version

Delete a model version and all associated predictions, including all output files.  Model version deletion has some restrictions:  - You can only delete versions from models you own. - You can only delete versions from private models. - You cannot delete a version if someone other than you has run predictions with it.  Example cURL request:  ```command curl -s -X DELETE \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/models/replicate/hello-world/versions/5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa ```  The response will be an empty 202, indicating the deletion request has been accepted. It might take a few minutes to be processed. 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
model_owner = 'model_owner_example' # String | The name of the user or organization that owns the model. 
model_name = 'model_name_example' # String | The name of the model. 
version_id = 'version_id_example' # String | The ID of the version. 

begin
  # Delete a model version
  api_instance.models_versions_delete(model_owner, model_name, version_id)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_versions_delete: #{e}"
end
```

#### Using the models_versions_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> models_versions_delete_with_http_info(model_owner, model_name, version_id)

```ruby
begin
  # Delete a model version
  data, status_code, headers = api_instance.models_versions_delete_with_http_info(model_owner, model_name, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_versions_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_owner** | **String** | The name of the user or organization that owns the model.  |  |
| **model_name** | **String** | The name of the model.  |  |
| **version_id** | **String** | The ID of the version.  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## models_versions_get

> models_versions_get(model_owner, model_name, version_id)

Get a model version

Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/models/replicate/hello-world/versions/5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa ```  The response will be the version object:  ```json {   \"id\": \"5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa\",   \"created_at\": \"2022-04-26T19:29:04.418669Z\",   \"cog_version\": \"0.3.0\",   \"openapi_schema\": {...} } ```  Every model describes its inputs and outputs with [OpenAPI Schema Objects](https://spec.openapis.org/oas/latest.html#schemaObject) in the `openapi_schema` property.  The `openapi_schema.components.schemas.Input` property for the [replicate/hello-world](https://replicate.com/replicate/hello-world) model looks like this:  ```json {   \"type\": \"object\",   \"title\": \"Input\",   \"required\": [     \"text\"   ],   \"properties\": {     \"text\": {       \"x-order\": 0,       \"type\": \"string\",       \"title\": \"Text\",       \"description\": \"Text to prefix with 'hello '\"     }   } } ```  The `openapi_schema.components.schemas.Output` property for the [replicate/hello-world](https://replicate.com/replicate/hello-world) model looks like this:  ```json {   \"type\": \"string\",   \"title\": \"Output\" } ```  For more details, see the docs on [Cog's supported input and output types](https://github.com/replicate/cog/blob/75b7802219e7cd4cee845e34c4c22139558615d4/docs/python.md#input-and-output-types) 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
model_owner = 'model_owner_example' # String | The name of the user or organization that owns the model. 
model_name = 'model_name_example' # String | The name of the model. 
version_id = 'version_id_example' # String | The ID of the version. 

begin
  # Get a model version
  api_instance.models_versions_get(model_owner, model_name, version_id)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_versions_get: #{e}"
end
```

#### Using the models_versions_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> models_versions_get_with_http_info(model_owner, model_name, version_id)

```ruby
begin
  # Get a model version
  data, status_code, headers = api_instance.models_versions_get_with_http_info(model_owner, model_name, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_versions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_owner** | **String** | The name of the user or organization that owns the model.  |  |
| **model_name** | **String** | The name of the model.  |  |
| **version_id** | **String** | The ID of the version.  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## models_versions_list

> models_versions_list(model_owner, model_name)

List model versions

Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/models/replicate/hello-world/versions ```  The response will be a JSON array of model version objects, sorted with the most recent version first:  ```json {   \"next\": null,   \"previous\": null,   \"results\": [     {       \"id\": \"5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa\",       \"created_at\": \"2022-04-26T19:29:04.418669Z\",       \"cog_version\": \"0.3.0\",       \"openapi_schema\": {...}     }   ] } ``` 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
model_owner = 'model_owner_example' # String | The name of the user or organization that owns the model. 
model_name = 'model_name_example' # String | The name of the model. 

begin
  # List model versions
  api_instance.models_versions_list(model_owner, model_name)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_versions_list: #{e}"
end
```

#### Using the models_versions_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> models_versions_list_with_http_info(model_owner, model_name)

```ruby
begin
  # List model versions
  data, status_code, headers = api_instance.models_versions_list_with_http_info(model_owner, model_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->models_versions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_owner** | **String** | The name of the user or organization that owns the model.  |  |
| **model_name** | **String** | The name of the model.  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## predictions_cancel

> predictions_cancel(prediction_id)

Cancel a prediction

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
prediction_id = 'prediction_id_example' # String | The ID of the prediction to cancel. 

begin
  # Cancel a prediction
  api_instance.predictions_cancel(prediction_id)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->predictions_cancel: #{e}"
end
```

#### Using the predictions_cancel_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> predictions_cancel_with_http_info(prediction_id)

```ruby
begin
  # Cancel a prediction
  data, status_code, headers = api_instance.predictions_cancel_with_http_info(prediction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->predictions_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prediction_id** | **String** | The ID of the prediction to cancel.  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## predictions_create

> <ApiResponse> predictions_create(opts)

Create a prediction

Start a new prediction for the model version and inputs you provide.  Example request body:  ```json {   \"version\": \"5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa\",   \"input\": {     \"text\": \"Alice\"   } } ```  Example cURL request:  ```console curl -s -X POST \\   -d '{\"version\": \"5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa\", \"input\": {\"text\": \"Alice\"}}' \\   -H \"Authorization: Token <paste-your-token-here>\" \\   -H 'Content-Type: application/json' \\   https://api.replicate.com/v1/predictions ```  The response will be the prediction object:  ```json {   \"id\": \"gm3qorzdhgbfurvjtvhg6dckhu\",   \"model\": \"replicate/hello-world\",   \"version\": \"5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa\",   \"input\": {     \"text\": \"Alice\"   },   \"logs\": \"\",   \"error\": null,   \"status\": \"starting\",   \"created_at\": \"2023-09-08T16:19:34.765994657Z\",   \"urls\": {     \"cancel\": \"https://api.replicate.com/v1/predictions/gm3qorzdhgbfurvjtvhg6dckhu/cancel\",     \"get\": \"https://api.replicate.com/v1/predictions/gm3qorzdhgbfurvjtvhg6dckhu\"   } } ```  As models can take several seconds or more to run, the output will not be available immediately. To get the final result of the prediction you should either provide a `webhook` HTTPS URL for us to call when the results are ready, or poll the [get a prediction](#predictions.get) endpoint until it has finished.  Input and output (including any files) will be automatically deleted after an hour, so you must save a copy of any files in the output if you'd like to continue using them.  Output files are served by `replicate.delivery` and its subdomains. If you use an allow list of external domains for your assets, add `replicate.delivery` and `*.replicate.delivery` to it. 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
opts = {
  predictions_create_request: Replicate::PredictionsCreateRequest.new # PredictionsCreateRequest | 
}

begin
  # Create a prediction
  result = api_instance.predictions_create(opts)
  p result
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->predictions_create: #{e}"
end
```

#### Using the predictions_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResponse>, Integer, Hash)> predictions_create_with_http_info(opts)

```ruby
begin
  # Create a prediction
  data, status_code, headers = api_instance.predictions_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResponse>
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->predictions_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **predictions_create_request** | [**PredictionsCreateRequest**](PredictionsCreateRequest.md) |  | [optional] |

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## predictions_get

> predictions_get(prediction_id)

Get a prediction

Get the current state of a prediction.  Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/predictions/gm3qorzdhgbfurvjtvhg6dckhu ```  The response will be the prediction object:  ```json {   \"id\": \"gm3qorzdhgbfurvjtvhg6dckhu\",   \"model\": \"replicate/hello-world\",   \"version\": \"5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa\",   \"input\": {     \"text\": \"Alice\"   },   \"logs\": \"\",   \"output\": \"hello Alice\",   \"error\": null,   \"status\": \"succeeded\",   \"created_at\": \"2023-09-08T16:19:34.765994Z\",   \"started_at\": \"2023-09-08T16:19:34.779176Z\",   \"completed_at\": \"2023-09-08T16:19:34.791859Z\",   \"metrics\": {     \"predict_time\": 0.012683   },   \"urls\": {     \"cancel\": \"https://api.replicate.com/v1/predictions/gm3qorzdhgbfurvjtvhg6dckhu/cancel\",     \"get\": \"https://api.replicate.com/v1/predictions/gm3qorzdhgbfurvjtvhg6dckhu\"   } } ```  `status` will be one of:  - `starting`: the prediction is starting up. If this status lasts longer than a few seconds, then it's typically because a new worker is being started to run the prediction. - `processing`: the `predict()` method of the model is currently running. - `succeeded`: the prediction completed successfully. - `failed`: the prediction encountered an error during processing. - `canceled`: the prediction was canceled by its creator.  In the case of success, `output` will be an object containing the output of the model. Any files will be represented as HTTPS URLs. You'll need to pass the `Authorization` header to request them.  In the case of failure, `error` will contain the error encountered during the prediction.  Terminated predictions (with a status of `succeeded`, `failed`, or `canceled`) will include a `metrics` object with a `predict_time` property showing the amount of CPU or GPU time, in seconds, that the prediction used while running. It won't include time waiting for the prediction to start.  Input and output (including any files) are automatically deleted after an hour, so you must save a copy of any files in the output if you'd like to continue using them.  Output files are served by `replicate.delivery` and its subdomains. If you use an allow list of external domains for your assets, add `replicate.delivery` and `*.replicate.delivery` to it. 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
prediction_id = 'prediction_id_example' # String | The ID of the prediction to get. 

begin
  # Get a prediction
  api_instance.predictions_get(prediction_id)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->predictions_get: #{e}"
end
```

#### Using the predictions_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> predictions_get_with_http_info(prediction_id)

```ruby
begin
  # Get a prediction
  data, status_code, headers = api_instance.predictions_get_with_http_info(prediction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->predictions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prediction_id** | **String** | The ID of the prediction to get.  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## predictions_list

> predictions_list

List predictions

Get a paginated list of predictions that you've created. This will include predictions created from the API and the website. It will return 100 records per page.  Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/predictions ```  The response will be a paginated JSON array of prediction objects, sorted with the most recent prediction first:  ```json {   \"next\": null,   \"previous\": null,   \"results\": [     {       \"completed_at\": \"2023-09-08T16:19:34.791859Z\",       \"created_at\": \"2023-09-08T16:19:34.907244Z\",       \"error\": null,       \"id\": \"gm3qorzdhgbfurvjtvhg6dckhu\",       \"input\": {         \"text\": \"Alice\"       },       \"metrics\": {         \"predict_time\": 0.012683       },       \"output\": \"hello Alice\",       \"started_at\": \"2023-09-08T16:19:34.779176Z\",       \"source\": \"api\",       \"status\": \"succeeded\",       \"urls\": {         \"get\": \"https://api.replicate.com/v1/predictions/gm3qorzdhgbfurvjtvhg6dckhu\",         \"cancel\": \"https://api.replicate.com/v1/predictions/gm3qorzdhgbfurvjtvhg6dckhu/cancel\"       },       \"model\": \"replicate/hello-world\",       \"version\": \"5c7d5dc6dd8bf75c1acaa8565735e7986bc5b66206b55cca93cb72c9bf15ccaa\",     }   ] } ```  `id` will be the unique ID of the prediction.  `source` will indicate how the prediction was created. Possible values are `web` or `api`.  `status` will be the status of the prediction. Refer to [get a single prediction](#predictions.get) for possible values.  `urls` will be a convenience object that can be used to construct new API requests for the given prediction.  `model` will be the model identifier string in the format of `{model_owner}/{model_name}`.  `version` will be the unique ID of model version used to create the prediction. 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new

begin
  # List predictions
  api_instance.predictions_list
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->predictions_list: #{e}"
end
```

#### Using the predictions_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> predictions_list_with_http_info

```ruby
begin
  # List predictions
  data, status_code, headers = api_instance.predictions_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->predictions_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## trainings_cancel

> trainings_cancel(training_id)

Cancel a training

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
training_id = 'training_id_example' # String | The ID of the training you want to cancel. 

begin
  # Cancel a training
  api_instance.trainings_cancel(training_id)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->trainings_cancel: #{e}"
end
```

#### Using the trainings_cancel_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> trainings_cancel_with_http_info(training_id)

```ruby
begin
  # Cancel a training
  data, status_code, headers = api_instance.trainings_cancel_with_http_info(training_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->trainings_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **training_id** | **String** | The ID of the training you want to cancel.  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## trainings_create

> <ApiResponse> trainings_create(model_owner, model_name, version_id, opts)

Create a training

Start a new training of the model version you specify.  Example request body:  ```json {   \"destination\": \"{new_owner}/{new_name}\",   \"input\": {     \"train_data\": \"https://example.com/my-input-images.zip\",   },   \"webhook\": \"https://example.com/my-webhook\", } ```  Example cURL request:  ```console curl -s -X POST \\   -d '{\"destination\": \"{new_owner}/{new_name}\", \"input\": {\"input_images\": \"https://example.com/my-input-images.zip\"}}' \\   -H \"Authorization: Token <paste-your-token-here>\" \\   -H 'Content-Type: application/json' \\   https://api.replicate.com/v1/models/stability-ai/sdxl/versions/da77bc59ee60423279fd632efb4795ab731d9e3ca9705ef3341091fb989b7eaf/trainings ```  The response will be the training object:  ```json {   \"id\": \"zz4ibbonubfz7carwiefibzgga\",   \"model\": \"stability-ai/sdxl\",   \"version\": \"da77bc59ee60423279fd632efb4795ab731d9e3ca9705ef3341091fb989b7eaf\",   \"input\": {     \"input_images\": \"https://example.com/my-input-images.zip\"   },   \"logs\": \"\",   \"error\": null,   \"status\": \"starting\",   \"created_at\": \"2023-09-08T16:32:56.990893084Z\",   \"urls\": {     \"cancel\": \"https://api.replicate.com/v1/predictions/zz4ibbonubfz7carwiefibzgga/cancel\",     \"get\": \"https://api.replicate.com/v1/predictions/zz4ibbonubfz7carwiefibzgga\"   } } ```  As models can take several minutes or more to train, the result will not be available immediately. To get the final result of the training you should either provide a `webhook` HTTPS URL for us to call when the results are ready, or poll the [get a training](#trainings.get) endpoint until it has finished.  When a training completes, it creates a new [version](https://replicate.com/docs/how-does-replicate-work#terminology) of the model at the specified destination.  To find some models to train on, check out the [trainable language models collection](https://replicate.com/collections/trainable-language-models). 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
model_owner = 'model_owner_example' # String | The name of the user or organization that owns the model. 
model_name = 'model_name_example' # String | The name of the model. 
version_id = 'version_id_example' # String | The ID of the version. 
opts = {
  trainings_create_request: Replicate::TrainingsCreateRequest.new # TrainingsCreateRequest | 
}

begin
  # Create a training
  result = api_instance.trainings_create(model_owner, model_name, version_id, opts)
  p result
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->trainings_create: #{e}"
end
```

#### Using the trainings_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResponse>, Integer, Hash)> trainings_create_with_http_info(model_owner, model_name, version_id, opts)

```ruby
begin
  # Create a training
  data, status_code, headers = api_instance.trainings_create_with_http_info(model_owner, model_name, version_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResponse>
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->trainings_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_owner** | **String** | The name of the user or organization that owns the model.  |  |
| **model_name** | **String** | The name of the model.  |  |
| **version_id** | **String** | The ID of the version.  |  |
| **trainings_create_request** | [**TrainingsCreateRequest**](TrainingsCreateRequest.md) |  | [optional] |

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## trainings_get

> trainings_get(training_id)

Get a training

Get the current state of a training.  Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/trainings/zz4ibbonubfz7carwiefibzgga ```  The response will be the training object:  ```json {   \"completed_at\": \"2023-09-08T16:41:19.826523Z\",   \"created_at\": \"2023-09-08T16:32:57.018467Z\",   \"error\": null,   \"id\": \"zz4ibbonubfz7carwiefibzgga\",   \"input\": {     \"input_images\": \"https://example.com/my-input-images.zip\"   },   \"logs\": \"...\",   \"metrics\": {     \"predict_time\": 502.713876   },   \"output\": {     \"version\": \"...\",     \"weights\": \"...\"   },   \"started_at\": \"2023-09-08T16:32:57.112647Z\",   \"status\": \"succeeded\",   \"urls\": {     \"get\": \"https://api.replicate.com/v1/trainings/zz4ibbonubfz7carwiefibzgga\",     \"cancel\": \"https://api.replicate.com/v1/trainings/zz4ibbonubfz7carwiefibzgga/cancel\"   },   \"model\": \"stability-ai/sdxl\",   \"version\": \"da77bc59ee60423279fd632efb4795ab731d9e3ca9705ef3341091fb989b7eaf\", } ```  `status` will be one of:  - `starting`: the training is starting up. If this status lasts longer than a few seconds, then it's typically because a new worker is being started to run the training. - `processing`: the `train()` method of the model is currently running. - `succeeded`: the training completed successfully. - `failed`: the training encountered an error during processing. - `canceled`: the training was canceled by its creator.  In the case of success, `output` will be an object containing the output of the model. Any files will be represented as HTTPS URLs. You'll need to pass the `Authorization` header to request them.  In the case of failure, `error` will contain the error encountered during the training.  Terminated trainings (with a status of `succeeded`, `failed`, or `canceled`) will include a `metrics` object with a `predict_time` property showing the amount of CPU or GPU time, in seconds, that the training used while running. It won't include time waiting for the training to start. 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new
training_id = 'training_id_example' # String | The ID of the training to get. 

begin
  # Get a training
  api_instance.trainings_get(training_id)
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->trainings_get: #{e}"
end
```

#### Using the trainings_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> trainings_get_with_http_info(training_id)

```ruby
begin
  # Get a training
  data, status_code, headers = api_instance.trainings_get_with_http_info(training_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->trainings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **training_id** | **String** | The ID of the training to get.  |  |

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## trainings_list

> trainings_list

List trainings

Get a paginated list of trainings that you've created. This will include trainings created from the API and the website. It will return 100 records per page.  Example cURL request:  ```console curl -s \\   -H \"Authorization: Token <paste-your-token-here>\" \\   https://api.replicate.com/v1/trainings ```  The response will be a paginated JSON array of training objects, sorted with the most recent training first:  ```json {   \"next\": null,   \"previous\": null,   \"results\": [     {       \"completed_at\": \"2023-09-08T16:41:19.826523Z\",       \"created_at\": \"2023-09-08T16:32:57.018467Z\",       \"error\": null,       \"id\": \"zz4ibbonubfz7carwiefibzgga\",       \"input\": {         \"input_images\": \"https://example.com/my-input-images.zip\"       },       \"metrics\": {         \"predict_time\": 502.713876       },       \"output\": {         \"version\": \"...\",         \"weights\": \"...\"       },       \"started_at\": \"2023-09-08T16:32:57.112647Z\",       \"source\": \"api\",       \"status\": \"succeeded\",       \"urls\": {         \"get\": \"https://api.replicate.com/v1/trainings/zz4ibbonubfz7carwiefibzgga\",         \"cancel\": \"https://api.replicate.com/v1/trainings/zz4ibbonubfz7carwiefibzgga/cancel\"       },       \"model\": \"stability-ai/sdxl\",       \"version\": \"da77bc59ee60423279fd632efb4795ab731d9e3ca9705ef3341091fb989b7eaf\",     }   ] } ```  `id` will be the unique ID of the training.  `source` will indicate how the training was created. Possible values are `web` or `api`.  `status` will be the status of the training. Refer to [get a single training](#trainings.get) for possible values.  `urls` will be a convenience object that can be used to construct new API requests for the given training.  `version` will be the unique ID of model version used to create the training. 

### Examples

```ruby
require 'time'
require 'replicate-openapi-rb'
# setup authorization
Replicate.configure do |config|
  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Replicate::DefaultApi.new

begin
  # List trainings
  api_instance.trainings_list
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->trainings_list: #{e}"
end
```

#### Using the trainings_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> trainings_list_with_http_info

```ruby
begin
  # List trainings
  data, status_code, headers = api_instance.trainings_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Replicate::ApiError => e
  puts "Error when calling DefaultApi->trainings_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

