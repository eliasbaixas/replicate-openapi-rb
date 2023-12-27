# replicate-openapi-rb

Replicate - the Ruby gem for the Replicate HTTP API

A web service for running Replicate models

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0-a1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build replicate-openapi-rb.gemspec
```

Then either install the gem locally:

```shell
gem install ./replicate-openapi-rb-1.0.0.gem
```

(for development, run `gem install --dev ./replicate-openapi-rb-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'replicate-openapi-rb', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'replicate-openapi-rb', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'replicate-openapi-rb'

api_instance = Replicate::DefaultApi.new
collection_slug = 'collection_slug_example' # String | The slug of the collection, like `super-resolution` or `image-restoration`. See [replicate.com/collections](https://replicate.com/collections). 

begin
  #Get a collection of models
  api_instance.collections_get(collection_slug)
rescue Replicate::ApiError => e
  puts "Exception when calling DefaultApi->collections_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.replicate.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Replicate::DefaultApi* | [**collections_get**](docs/DefaultApi.md#collections_get) | **GET** /v1/collections/{collection_slug} | Get a collection of models
*Replicate::DefaultApi* | [**collections_list**](docs/DefaultApi.md#collections_list) | **GET** /v1/collections | List collections of models
*Replicate::DefaultApi* | [**hardware_list**](docs/DefaultApi.md#hardware_list) | **GET** /v1/hardware | List available hardware for models
*Replicate::DefaultApi* | [**models_create**](docs/DefaultApi.md#models_create) | **POST** /v1/models | Create a model
*Replicate::DefaultApi* | [**models_get**](docs/DefaultApi.md#models_get) | **GET** /v1/models/{model_owner}/{model_name} | Get a model
*Replicate::DefaultApi* | [**models_list**](docs/DefaultApi.md#models_list) | **GET** /v1/models | List public models
*Replicate::DefaultApi* | [**models_versions_delete**](docs/DefaultApi.md#models_versions_delete) | **DELETE** /v1/models/{model_owner}/{model_name}/versions/{version_id} | Delete a model version
*Replicate::DefaultApi* | [**models_versions_get**](docs/DefaultApi.md#models_versions_get) | **GET** /v1/models/{model_owner}/{model_name}/versions/{version_id} | Get a model version
*Replicate::DefaultApi* | [**models_versions_list**](docs/DefaultApi.md#models_versions_list) | **GET** /v1/models/{model_owner}/{model_name}/versions | List model versions
*Replicate::DefaultApi* | [**predictions_cancel**](docs/DefaultApi.md#predictions_cancel) | **POST** /v1/predictions/{prediction_id}/cancel | Cancel a prediction
*Replicate::DefaultApi* | [**predictions_create**](docs/DefaultApi.md#predictions_create) | **POST** /v1/predictions | Create a prediction
*Replicate::DefaultApi* | [**predictions_get**](docs/DefaultApi.md#predictions_get) | **GET** /v1/predictions/{prediction_id} | Get a prediction
*Replicate::DefaultApi* | [**predictions_list**](docs/DefaultApi.md#predictions_list) | **GET** /v1/predictions | List predictions
*Replicate::DefaultApi* | [**trainings_cancel**](docs/DefaultApi.md#trainings_cancel) | **POST** /v1/trainings/{training_id}/cancel | Cancel a training
*Replicate::DefaultApi* | [**trainings_create**](docs/DefaultApi.md#trainings_create) | **POST** /v1/models/{model_owner}/{model_name}/versions/{version_id}/trainings | Create a training
*Replicate::DefaultApi* | [**trainings_get**](docs/DefaultApi.md#trainings_get) | **GET** /v1/trainings/{training_id} | Get a training
*Replicate::DefaultApi* | [**trainings_list**](docs/DefaultApi.md#trainings_list) | **GET** /v1/trainings | List trainings


## Documentation for Models

 - [Replicate::ApiResponse](docs/ApiResponse.md)
 - [Replicate::ApiResponseInput](docs/ApiResponseInput.md)
 - [Replicate::ApiResponseUrls](docs/ApiResponseUrls.md)
 - [Replicate::HardwareList200ResponseInner](docs/HardwareList200ResponseInner.md)
 - [Replicate::ModelsCreateRequest](docs/ModelsCreateRequest.md)
 - [Replicate::PredictionsCreateRequest](docs/PredictionsCreateRequest.md)
 - [Replicate::TrainingsCreateRequest](docs/TrainingsCreateRequest.md)


## Documentation for Authorization

Endpoints do not require authorization.

