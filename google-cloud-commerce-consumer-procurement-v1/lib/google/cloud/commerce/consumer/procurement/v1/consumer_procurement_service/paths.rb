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


module Google
  module Cloud
    module Commerce
      module Consumer
        module Procurement
          module V1
            module ConsumerProcurementService
              # Path helper methods for the ConsumerProcurementService API.
              module Paths
                ##
                # Create a fully-qualified BillingAccount resource string.
                #
                # The resource will be in the following format:
                #
                # `billingAccounts/{billing_account}`
                #
                # @param billing_account [String]
                #
                # @return [::String]
                def billing_account_path billing_account:
                  "billingAccounts/#{billing_account}"
                end

                ##
                # Create a fully-qualified Offer resource string.
                #
                # @overload offer_path(service:, offer:)
                #   The resource will be in the following format:
                #
                #   `services/{service}/standardOffers/{offer}`
                #
                #   @param service [String]
                #   @param offer [String]
                #
                # @overload offer_path(consumer_billing_account:, offer:)
                #   The resource will be in the following format:
                #
                #   `billingAccounts/{consumer_billing_account}/offers/{offer}`
                #
                #   @param consumer_billing_account [String]
                #   @param offer [String]
                #
                # @return [::String]
                def offer_path **args
                  resources = {
                    "offer:service" => (proc do |service:, offer:|
                      raise ::ArgumentError, "service cannot contain /" if service.to_s.include? "/"

                      "services/#{service}/standardOffers/#{offer}"
                    end),
                    "consumer_billing_account:offer" => (proc do |consumer_billing_account:, offer:|
                      raise ::ArgumentError, "consumer_billing_account cannot contain /" if consumer_billing_account.to_s.include? "/"

                      "billingAccounts/#{consumer_billing_account}/offers/#{offer}"
                    end)
                  }

                  resource = resources[args.keys.sort.join(":")]
                  raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
                  resource.call(**args)
                end

                extend self
              end
            end
          end
        end
      end
    end
  end
end
