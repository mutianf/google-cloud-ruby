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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/edge_network/v1/version"
require "google/cloud/edge_network/v1/bindings_override"

require "google/cloud/edge_network/v1/edge_network/credentials"
require "google/cloud/edge_network/v1/edge_network/paths"
require "google/cloud/edge_network/v1/edge_network/rest/operations"
require "google/cloud/edge_network/v1/edge_network/rest/client"

module Google
  module Cloud
    module EdgeNetwork
      module V1
        ##
        # EdgeNetwork API provides managed, highly available cloud dynamic network
        # configuration service to the GEC customer to enable edge application and
        # network function solutions. This allows the customers to easily define and
        # configure the network setup and property to meet the workload requirement.
        #
        # To load this service and instantiate a REST client:
        #
        #     require "google/cloud/edge_network/v1/edge_network/rest"
        #     client = ::Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Rest::Client.new
        #
        module EdgeNetwork
          # Client for the REST transport
          module Rest
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/edge_network/v1/edge_network/rest/helpers" if ::File.file? helper_path
