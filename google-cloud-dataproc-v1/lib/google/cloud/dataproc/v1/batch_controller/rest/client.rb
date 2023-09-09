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

require "google/cloud/errors"
require "google/cloud/dataproc/v1/batches_pb"
require "google/cloud/dataproc/v1/batch_controller/rest/service_stub"
require "google/iam/v1/rest"

module Google
  module Cloud
    module Dataproc
      module V1
        module BatchController
          module Rest
            ##
            # REST client for the BatchController service.
            #
            # The BatchController provides methods to manage batch workloads.
            #
            class Client
              include Paths

              # @private
              attr_reader :batch_controller_stub

              ##
              # Configure the BatchController Client class.
              #
              # See {::Google::Cloud::Dataproc::V1::BatchController::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all BatchController clients
              #   ::Google::Cloud::Dataproc::V1::BatchController::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Dataproc", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the BatchController Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Dataproc::V1::BatchController::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new BatchController REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Dataproc::V1::BatchController::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Dataproc::V1::BatchController::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the BatchController client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::Dataproc::V1::BatchController::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @iam_policy_client = Google::Iam::V1::IAMPolicy::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                  config.bindings_override = @config.bindings_override
                end

                @batch_controller_stub = ::Google::Cloud::Dataproc::V1::BatchController::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::Dataproc::V1::BatchController::Rest::Operations]
              #
              attr_reader :operations_client

              ##
              # Get the associated client for mix-in of the IAMPolicy.
              #
              # @return [Google::Iam::V1::IAMPolicy::Rest::Client]
              #
              attr_reader :iam_policy_client

              # Service calls

              ##
              # Creates a batch workload that executes asynchronously.
              #
              # @overload create_batch(request, options = nil)
              #   Pass arguments to `create_batch` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::CreateBatchRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::CreateBatchRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload create_batch(parent: nil, batch: nil, batch_id: nil, request_id: nil)
              #   Pass arguments to `create_batch` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The parent resource where this batch will be created.
              #   @param batch [::Google::Cloud::Dataproc::V1::Batch, ::Hash]
              #     Required. The batch to create.
              #   @param batch_id [::String]
              #     Optional. The ID to use for the batch, which will become the final
              #     component of the batch's resource name.
              #
              #     This value must be 4-63 characters. Valid characters are `/[a-z][0-9]-/`.
              #   @param request_id [::String]
              #     Optional. A unique ID used to identify the request. If the service
              #     receives two
              #     [CreateBatchRequest](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s
              #     with the same request_id, the second request is ignored and the
              #     Operation that corresponds to the first Batch created and stored
              #     in the backend is returned.
              #
              #     Recommendation: Set this value to a
              #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
              #
              #     The value must contain only letters (a-z, A-Z), numbers (0-9),
              #     underscores (_), and hyphens (-). The maximum length is 40 characters.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dataproc/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dataproc::V1::BatchController::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dataproc::V1::CreateBatchRequest.new
              #
              #   # Call the create_batch method.
              #   result = client.create_batch request
              #
              #   # The returned object is of type Gapic::Operation. You can use it to
              #   # check the status of an operation, cancel it, or wait for results.
              #   # Here is how to wait for a response.
              #   result.wait_until_done! timeout: 60
              #   if result.response?
              #     p result.response
              #   else
              #     puts "No response received."
              #   end
              #
              def create_batch request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::CreateBatchRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.create_batch.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.create_batch.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.create_batch.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @batch_controller_stub.create_batch request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Gets the batch workload resource representation.
              #
              # @overload get_batch(request, options = nil)
              #   Pass arguments to `get_batch` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::GetBatchRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::GetBatchRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_batch(name: nil)
              #   Pass arguments to `get_batch` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The fully qualified name of the batch to retrieve
              #     in the format
              #     "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::Batch]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::Batch]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dataproc/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dataproc::V1::BatchController::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dataproc::V1::GetBatchRequest.new
              #
              #   # Call the get_batch method.
              #   result = client.get_batch request
              #
              #   # The returned object is of type Google::Cloud::Dataproc::V1::Batch.
              #   p result
              #
              def get_batch request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::GetBatchRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_batch.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_batch.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_batch.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @batch_controller_stub.get_batch request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Lists batch workloads.
              #
              # @overload list_batches(request, options = nil)
              #   Pass arguments to `list_batches` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::ListBatchesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::ListBatchesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_batches(parent: nil, page_size: nil, page_token: nil, filter: nil, order_by: nil)
              #   Pass arguments to `list_batches` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The parent, which owns this collection of batches.
              #   @param page_size [::Integer]
              #     Optional. The maximum number of batches to return in each response.
              #     The service may return fewer than this value.
              #     The default page size is 20; the maximum page size is 1000.
              #   @param page_token [::String]
              #     Optional. A page token received from a previous `ListBatches` call.
              #     Provide this token to retrieve the subsequent page.
              #   @param filter [::String]
              #     Optional. A filter for the batches to return in the response.
              #
              #     A filter is a logical expression constraining the values of various fields
              #     in each batch resource. Filters are case sensitive, and may contain
              #     multiple clauses combined with logical operators (AND/OR).
              #     Supported fields are `batch_id`, `batch_uuid`, `state`, and `create_time`.
              #
              #     e.g. `state = RUNNING and create_time < "2023-01-01T00:00:00Z"`
              #     filters for batches in state RUNNING that were created before 2023-01-01
              #
              #     See https://google.aip.dev/assets/misc/ebnf-filtering.txt for a detailed
              #     description of the filter syntax and a list of supported comparisons.
              #   @param order_by [::String]
              #     Optional. Field(s) on which to sort the list of batches.
              #
              #     Currently the only supported sort orders are unspecified (empty) and
              #     `create_time desc` to sort by most recently created batches first.
              #
              #     See https://google.aip.dev/132#ordering for more details.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Dataproc::V1::Batch>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Dataproc::V1::Batch>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dataproc/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dataproc::V1::BatchController::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dataproc::V1::ListBatchesRequest.new
              #
              #   # Call the list_batches method.
              #   result = client.list_batches request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::Dataproc::V1::Batch.
              #     p item
              #   end
              #
              def list_batches request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::ListBatchesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_batches.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_batches.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_batches.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @batch_controller_stub.list_batches request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @batch_controller_stub, :list_batches, "batches", request, result, options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes the batch workload resource. If the batch is not in terminal state,
              # the delete fails and the response returns `FAILED_PRECONDITION`.
              #
              # @overload delete_batch(request, options = nil)
              #   Pass arguments to `delete_batch` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::DeleteBatchRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::DeleteBatchRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_batch(name: nil)
              #   Pass arguments to `delete_batch` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The fully qualified name of the batch to retrieve
              #     in the format
              #     "projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID"
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Protobuf::Empty]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Protobuf::Empty]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dataproc/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dataproc::V1::BatchController::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dataproc::V1::DeleteBatchRequest.new
              #
              #   # Call the delete_batch method.
              #   result = client.delete_batch request
              #
              #   # The returned object is of type Google::Protobuf::Empty.
              #   p result
              #
              def delete_batch request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::DeleteBatchRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_batch.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_batch.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_batch.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @batch_controller_stub.delete_batch request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the BatchController REST API.
              #
              # This class represents the configuration for BatchController REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Dataproc::V1::BatchController::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # create_batch to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Dataproc::V1::BatchController::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_batch.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Dataproc::V1::BatchController::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_batch.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"dataproc.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                DEFAULT_ENDPOINT = "dataproc.googleapis.com"

                config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                # Overrides for http bindings for the RPCs of this service
                # are only used when this service is used as mixin, and only
                # by the host service.
                # @return [::Hash{::Symbol=>::Array<::Gapic::Rest::GrpcTranscoder::HttpBinding>}]
                config_attr :bindings_override, {}, ::Hash, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the BatchController API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `create_batch`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_batch
                  ##
                  # RPC-specific configuration for `get_batch`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_batch
                  ##
                  # RPC-specific configuration for `list_batches`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_batches
                  ##
                  # RPC-specific configuration for `delete_batch`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_batch

                  # @private
                  def initialize parent_rpcs = nil
                    create_batch_config = parent_rpcs.create_batch if parent_rpcs.respond_to? :create_batch
                    @create_batch = ::Gapic::Config::Method.new create_batch_config
                    get_batch_config = parent_rpcs.get_batch if parent_rpcs.respond_to? :get_batch
                    @get_batch = ::Gapic::Config::Method.new get_batch_config
                    list_batches_config = parent_rpcs.list_batches if parent_rpcs.respond_to? :list_batches
                    @list_batches = ::Gapic::Config::Method.new list_batches_config
                    delete_batch_config = parent_rpcs.delete_batch if parent_rpcs.respond_to? :delete_batch
                    @delete_batch = ::Gapic::Config::Method.new delete_batch_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
