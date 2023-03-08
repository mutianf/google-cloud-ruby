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
require "google/cloud/shell/v1/cloudshell_pb"
require "google/cloud/shell/v1/cloud_shell_service/rest"


class ::Google::Cloud::Shell::V1::CloudShellService::Rest::ClientTest < Minitest::Test
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

  def test_get_environment
    # Create test objects.
    client_result = ::Google::Cloud::Shell::V1::Environment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_environment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Shell::V1::CloudShellService::Rest::ServiceStub.stub :transcode_get_environment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_environment_client_stub do
        # Create client
        client = ::Google::Cloud::Shell::V1::CloudShellService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_environment({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_environment name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_environment ::Google::Cloud::Shell::V1::GetEnvironmentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_environment({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_environment(::Google::Cloud::Shell::V1::GetEnvironmentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_environment_client_stub.call_count
      end
    end
  end

  def test_start_environment
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    access_token = "hello world"
    public_keys = ["hello world"]

    start_environment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Shell::V1::CloudShellService::Rest::ServiceStub.stub :transcode_start_environment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, start_environment_client_stub do
        # Create client
        client = ::Google::Cloud::Shell::V1::CloudShellService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.start_environment({ name: name, access_token: access_token, public_keys: public_keys }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.start_environment name: name, access_token: access_token, public_keys: public_keys do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.start_environment ::Google::Cloud::Shell::V1::StartEnvironmentRequest.new(name: name, access_token: access_token, public_keys: public_keys) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.start_environment({ name: name, access_token: access_token, public_keys: public_keys }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.start_environment(::Google::Cloud::Shell::V1::StartEnvironmentRequest.new(name: name, access_token: access_token, public_keys: public_keys), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, start_environment_client_stub.call_count
      end
    end
  end

  def test_authorize_environment
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    access_token = "hello world"
    id_token = "hello world"
    expire_time = {}

    authorize_environment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Shell::V1::CloudShellService::Rest::ServiceStub.stub :transcode_authorize_environment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, authorize_environment_client_stub do
        # Create client
        client = ::Google::Cloud::Shell::V1::CloudShellService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.authorize_environment({ name: name, access_token: access_token, id_token: id_token, expire_time: expire_time }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.authorize_environment name: name, access_token: access_token, id_token: id_token, expire_time: expire_time do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.authorize_environment ::Google::Cloud::Shell::V1::AuthorizeEnvironmentRequest.new(name: name, access_token: access_token, id_token: id_token, expire_time: expire_time) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.authorize_environment({ name: name, access_token: access_token, id_token: id_token, expire_time: expire_time }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.authorize_environment(::Google::Cloud::Shell::V1::AuthorizeEnvironmentRequest.new(name: name, access_token: access_token, id_token: id_token, expire_time: expire_time), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, authorize_environment_client_stub.call_count
      end
    end
  end

  def test_add_public_key
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    key = "hello world"

    add_public_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Shell::V1::CloudShellService::Rest::ServiceStub.stub :transcode_add_public_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, add_public_key_client_stub do
        # Create client
        client = ::Google::Cloud::Shell::V1::CloudShellService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.add_public_key({ environment: environment, key: key }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.add_public_key environment: environment, key: key do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.add_public_key ::Google::Cloud::Shell::V1::AddPublicKeyRequest.new(environment: environment, key: key) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.add_public_key({ environment: environment, key: key }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.add_public_key(::Google::Cloud::Shell::V1::AddPublicKeyRequest.new(environment: environment, key: key), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, add_public_key_client_stub.call_count
      end
    end
  end

  def test_remove_public_key
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    key = "hello world"

    remove_public_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Shell::V1::CloudShellService::Rest::ServiceStub.stub :transcode_remove_public_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, remove_public_key_client_stub do
        # Create client
        client = ::Google::Cloud::Shell::V1::CloudShellService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.remove_public_key({ environment: environment, key: key }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.remove_public_key environment: environment, key: key do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.remove_public_key ::Google::Cloud::Shell::V1::RemovePublicKeyRequest.new(environment: environment, key: key) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.remove_public_key({ environment: environment, key: key }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.remove_public_key(::Google::Cloud::Shell::V1::RemovePublicKeyRequest.new(environment: environment, key: key), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, remove_public_key_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Shell::V1::CloudShellService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Shell::V1::CloudShellService::Rest::Client::Configuration, config
  end
end