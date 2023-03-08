# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"
require "gapic/rest"
require "google/appengine/v1/appengine_pb"
require "google/cloud/app_engine/v1/domain_mappings/rest"


class ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_list_domain_mappings
    # Create test objects.
    client_result = ::Google::Cloud::AppEngine::V1::ListDomainMappingsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_domain_mappings_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::ServiceStub.stub :transcode_list_domain_mappings_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_domain_mappings_client_stub do
        # Create client
        client = ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_domain_mappings({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_domain_mappings parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_domain_mappings ::Google::Cloud::AppEngine::V1::ListDomainMappingsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_domain_mappings({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_domain_mappings(::Google::Cloud::AppEngine::V1::ListDomainMappingsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_domain_mappings_client_stub.call_count
      end
    end
  end

  def test_get_domain_mapping
    # Create test objects.
    client_result = ::Google::Cloud::AppEngine::V1::DomainMapping.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_domain_mapping_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::ServiceStub.stub :transcode_get_domain_mapping_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_domain_mapping_client_stub do
        # Create client
        client = ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_domain_mapping({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_domain_mapping name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_domain_mapping ::Google::Cloud::AppEngine::V1::GetDomainMappingRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_domain_mapping({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_domain_mapping(::Google::Cloud::AppEngine::V1::GetDomainMappingRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_domain_mapping_client_stub.call_count
      end
    end
  end

  def test_create_domain_mapping
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    domain_mapping = {}
    override_strategy = :UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY

    create_domain_mapping_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::ServiceStub.stub :transcode_create_domain_mapping_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_domain_mapping_client_stub do
        # Create client
        client = ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_domain_mapping({ parent: parent, domain_mapping: domain_mapping, override_strategy: override_strategy }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_domain_mapping parent: parent, domain_mapping: domain_mapping, override_strategy: override_strategy do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_domain_mapping ::Google::Cloud::AppEngine::V1::CreateDomainMappingRequest.new(parent: parent, domain_mapping: domain_mapping, override_strategy: override_strategy) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_domain_mapping({ parent: parent, domain_mapping: domain_mapping, override_strategy: override_strategy }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_domain_mapping(::Google::Cloud::AppEngine::V1::CreateDomainMappingRequest.new(parent: parent, domain_mapping: domain_mapping, override_strategy: override_strategy), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_domain_mapping_client_stub.call_count
      end
    end
  end

  def test_update_domain_mapping
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    domain_mapping = {}
    update_mask = {}

    update_domain_mapping_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::ServiceStub.stub :transcode_update_domain_mapping_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_domain_mapping_client_stub do
        # Create client
        client = ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_domain_mapping({ name: name, domain_mapping: domain_mapping, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_domain_mapping name: name, domain_mapping: domain_mapping, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_domain_mapping ::Google::Cloud::AppEngine::V1::UpdateDomainMappingRequest.new(name: name, domain_mapping: domain_mapping, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_domain_mapping({ name: name, domain_mapping: domain_mapping, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_domain_mapping(::Google::Cloud::AppEngine::V1::UpdateDomainMappingRequest.new(name: name, domain_mapping: domain_mapping, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_domain_mapping_client_stub.call_count
      end
    end
  end

  def test_delete_domain_mapping
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_domain_mapping_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::ServiceStub.stub :transcode_delete_domain_mapping_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_domain_mapping_client_stub do
        # Create client
        client = ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_domain_mapping({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_domain_mapping name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_domain_mapping ::Google::Cloud::AppEngine::V1::DeleteDomainMappingRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_domain_mapping({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_domain_mapping(::Google::Cloud::AppEngine::V1::DeleteDomainMappingRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_domain_mapping_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AppEngine::V1::DomainMappings::Rest::Client::Configuration, config
  end
end