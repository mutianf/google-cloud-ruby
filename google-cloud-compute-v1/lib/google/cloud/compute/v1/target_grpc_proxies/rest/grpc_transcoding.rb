# frozen_string_literal: true

# Copyright 2021 Google LLC
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


module Google
  module Cloud
    module Compute
      module V1
        module TargetGrpcProxies
          module Rest
            # GRPC transcoding helper methods for the TargetGrpcProxies REST API.
            module GrpcTranscoding
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteTargetGrpcProxyRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/targetGrpcProxies/#{request_pb.target_grpc_proxy}"
                body = nil
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.request_id && request_pb.request_id != ""

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::GetTargetGrpcProxyRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/targetGrpcProxies/#{request_pb.target_grpc_proxy}"
                body = nil
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::InsertTargetGrpcProxyRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_insert request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/targetGrpcProxies"
                body = request_pb.target_grpc_proxy_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::ListTargetGrpcProxiesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/targetGrpcProxies"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.filter && request_pb.filter != ""
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.max_results && request_pb.max_results != 0
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.order_by && request_pb.order_by != ""
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.page_token && request_pb.page_token != ""
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.return_partial_success && request_pb.return_partial_success != false

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::PatchTargetGrpcProxyRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_patch request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/global/targetGrpcProxies/#{request_pb.target_grpc_proxy}"
                body = request_pb.target_grpc_proxy_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end
              extend self
            end
          end
        end
      end
    end
  end
end
