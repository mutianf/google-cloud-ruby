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

require "google/cloud/commerce/consumer/procurement/v1/version"

require "google/cloud/commerce/consumer/procurement/v1/consumer_procurement_service/credentials"
require "google/cloud/commerce/consumer/procurement/v1/consumer_procurement_service/paths"
require "google/cloud/commerce/consumer/procurement/v1/consumer_procurement_service/rest/operations"
require "google/cloud/commerce/consumer/procurement/v1/consumer_procurement_service/rest/client"

module Google
  module Cloud
    module Commerce
      module Consumer
        module Procurement
          module V1
            ##
            # ConsumerProcurementService allows customers to make purchases of products
            # served by the Cloud Commerce platform.
            #
            #
            # When purchases are made, the
            # {::Google::Cloud::Commerce::Consumer::Procurement::V1::ConsumerProcurementService::Client ConsumerProcurementService}
            # programs the appropriate backends, including both Google's own
            # infrastructure, as well as third-party systems, and to enable billing setup
            # for charging for the procured item.
            #
            # To load this service and instantiate a REST client:
            #
            #     require "google/cloud/commerce/consumer/procurement/v1/consumer_procurement_service/rest"
            #     client = ::Google::Cloud::Commerce::Consumer::Procurement::V1::ConsumerProcurementService::Rest::Client.new
            #
            module ConsumerProcurementService
              # Client for the REST transport
              module Rest
              end
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/commerce/consumer/procurement/v1/consumer_procurement_service/rest/helpers" if ::File.file? helper_path
