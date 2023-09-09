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
require "google/cloud/discoveryengine/v1/completion_service_pb"
require "google/cloud/location"

module Google
  module Cloud
    module DiscoveryEngine
      module V1
        module CompletionService
          ##
          # Client for the CompletionService service.
          #
          # Service for Auto-Completion.
          #
          class Client
            include Paths

            # @private
            attr_reader :completion_service_stub

            ##
            # Configure the CompletionService Client class.
            #
            # See {::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all CompletionService clients
            #   ::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "DiscoveryEngine", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 5.0
                default_config.retry_policy = {
                  initial_delay: 0.1, max_delay: 5.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the CompletionService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client::Configuration}
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
            # Create a new CompletionService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the CompletionService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/discoveryengine/v1/completion_service_services_pb"

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

              @location_client = Google::Cloud::Location::Locations::Client.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @completion_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::DiscoveryEngine::V1::CompletionService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool
              )
            end

            ##
            # Get the associated client for mix-in of the Locations.
            #
            # @return [Google::Cloud::Location::Locations::Client]
            #
            attr_reader :location_client

            # Service calls

            ##
            # Completes the specified user input with keyword suggestions.
            #
            # @overload complete_query(request, options = nil)
            #   Pass arguments to `complete_query` via a request object, either of type
            #   {::Google::Cloud::DiscoveryEngine::V1::CompleteQueryRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DiscoveryEngine::V1::CompleteQueryRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload complete_query(data_store: nil, query: nil, query_model: nil, user_pseudo_id: nil, include_tail_suggestions: nil)
            #   Pass arguments to `complete_query` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param data_store [::String]
            #     Required. The parent data store resource name for which the completion is
            #     performed, such as
            #     `projects/*/locations/global/collections/default_collection/dataStores/default_data_store`.
            #   @param query [::String]
            #     Required. The typeahead input used to fetch suggestions. Maximum length is
            #     128 characters.
            #   @param query_model [::String]
            #     Selects data model of query suggestions for serving. Currently supported
            #     values:
            #
            #     * `document` - Using suggestions generated from user-imported documents.
            #     * `search-history` - Using suggestions generated from the past history of
            #     {::Google::Cloud::DiscoveryEngine::V1::SearchService::Client#search SearchService.Search}
            #     API calls. Do not use it when there is no traffic for Search API.
            #     * `user-event` - Using suggestions generated from user-imported search
            #     events.
            #     * `document-completable` - Using suggestions taken directly from
            #     user-imported document fields marked as completable.
            #
            #     Default values:
            #
            #     * `document` is the default model for regular dataStores.
            #     * `search-history` is the default model for
            #     [IndustryVertical.SITE_SEARCH][] dataStores.
            #   @param user_pseudo_id [::String]
            #     A unique identifier for tracking visitors. For example, this could be
            #     implemented with an HTTP cookie, which should be able to uniquely identify
            #     a visitor on a single device. This unique identifier should not change if
            #     the visitor logs in or out of the website.
            #
            #     This field should NOT have a fixed value such as `unknown_visitor`.
            #
            #     This should be the same identifier as
            #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent#user_pseudo_id UserEvent.user_pseudo_id}
            #     and
            #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest#user_pseudo_id SearchRequest.user_pseudo_id}.
            #
            #     The field must be a UTF-8 encoded string with a length limit of 128
            #     characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
            #   @param include_tail_suggestions [::Boolean]
            #     Indicates if tail suggestions should be returned if there are no
            #     suggestions that match the full query. Even if set to true, if there are
            #     suggestions that match the full query, those are returned and no
            #     tail suggestions are returned.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::DiscoveryEngine::V1::CompleteQueryResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::DiscoveryEngine::V1::CompleteQueryResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/discovery_engine/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::DiscoveryEngine::V1::CompletionService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::DiscoveryEngine::V1::CompleteQueryRequest.new
            #
            #   # Call the complete_query method.
            #   result = client.complete_query request
            #
            #   # The returned object is of type Google::Cloud::DiscoveryEngine::V1::CompleteQueryResponse.
            #   p result
            #
            def complete_query request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1::CompleteQueryRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.complete_query.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DiscoveryEngine::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.data_store
                header_params["data_store"] = request.data_store
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.complete_query.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.complete_query.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @completion_service_stub.call_rpc :complete_query, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the CompletionService API.
            #
            # This class represents the configuration for CompletionService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # complete_query to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.complete_query.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.complete_query.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"discoveryengine.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
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
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
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

              DEFAULT_ENDPOINT = "discoveryengine.googleapis.com"

              config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

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
              # Configuration for the channel pool
              # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
              #
              def channel_pool
                @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
              end

              ##
              # Configuration RPC class for the CompletionService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
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
                # RPC-specific configuration for `complete_query`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :complete_query

                # @private
                def initialize parent_rpcs = nil
                  complete_query_config = parent_rpcs.complete_query if parent_rpcs.respond_to? :complete_query
                  @complete_query = ::Gapic::Config::Method.new complete_query_config

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
