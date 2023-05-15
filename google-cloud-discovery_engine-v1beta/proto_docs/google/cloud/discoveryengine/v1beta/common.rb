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
    module DiscoveryEngine
      module V1beta
        # A floating point interval.
        # @!attribute [rw] minimum
        #   @return [::Float]
        #     Inclusive lower bound.
        # @!attribute [rw] exclusive_minimum
        #   @return [::Float]
        #     Exclusive lower bound.
        # @!attribute [rw] maximum
        #   @return [::Float]
        #     Inclusive upper bound.
        # @!attribute [rw] exclusive_maximum
        #   @return [::Float]
        #     Exclusive upper bound.
        class Interval
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A custom attribute that is not explicitly modeled in a resource, e.g.
        # {::Google::Cloud::DiscoveryEngine::V1beta::UserEvent UserEvent}.
        # @!attribute [rw] text
        #   @return [::Array<::String>]
        #     The textual values of this custom attribute. For example, `["yellow",
        #     "green"]` when the key is "color".
        #
        #     Empty string is not allowed. Otherwise, an `INVALID_ARGUMENT` error is
        #     returned.
        #
        #     Exactly one of
        #     {::Google::Cloud::DiscoveryEngine::V1beta::CustomAttribute#text CustomAttribute.text}
        #     or
        #     {::Google::Cloud::DiscoveryEngine::V1beta::CustomAttribute#numbers CustomAttribute.numbers}
        #     should be set. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @!attribute [rw] numbers
        #   @return [::Array<::Float>]
        #     The numerical values of this custom attribute. For example, `[2.3, 15.4]`
        #     when the key is "lengths_cm".
        #
        #     Exactly one of
        #     {::Google::Cloud::DiscoveryEngine::V1beta::CustomAttribute#text CustomAttribute.text}
        #     or
        #     {::Google::Cloud::DiscoveryEngine::V1beta::CustomAttribute#numbers CustomAttribute.numbers}
        #     should be set. Otherwise, an `INVALID_ARGUMENT` error is returned.
        class CustomAttribute
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information of an end user.
        # @!attribute [rw] user_id
        #   @return [::String]
        #     Highly recommended for logged-in users. Unique identifier for logged-in
        #     user, such as a user name. Don't set for anonymous users.
        #
        #     Always use a hashed value for this ID.
        #
        #     Don't set the field to the same fixed ID for different users. This mixes
        #     the event history of those users together, which results in degraded
        #     model quality.
        #
        #     The field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @!attribute [rw] user_agent
        #   @return [::String]
        #     User agent as included in the HTTP header. Required for getting
        #     [SearchResponse.sponsored_results][].
        #
        #     The field must be a UTF-8 encoded string with a length limit of 1,000
        #     characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
        #
        #     This should not be set when using the client side event reporting with
        #     GTM or JavaScript tag in
        #     {::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Client#collect_user_event UserEventService.CollectUserEvent}
        #     or if
        #     {::Google::Cloud::DiscoveryEngine::V1beta::UserEvent#direct_user_request UserEvent.direct_user_request}
        #     is set.
        class UserInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end