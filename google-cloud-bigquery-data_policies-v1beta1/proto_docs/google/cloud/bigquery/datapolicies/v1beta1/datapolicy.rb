# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module Bigquery
      module DataPolicies
        module V1beta1
          # Request message for the CreateDataPolicy method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Resource name of the project that the data policy will belong to. The
          #     format is `projects/{project_number}/locations/{location_id}`.
          # @!attribute [rw] data_policy
          #   @return [::Google::Cloud::Bigquery::DataPolicies::V1beta1::DataPolicy]
          #     Required. The data policy to create. The `name` field does not need to be
          #     provided for the data policy creation.
          class CreateDataPolicyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for the UpdateDataPolicy method.
          # @!attribute [rw] data_policy
          #   @return [::Google::Cloud::Bigquery::DataPolicies::V1beta1::DataPolicy]
          #     Required. Update the data policy's metadata.
          #
          #     The target data policy is determined by the `name` field.
          #     Other fields are updated to the specified values based on the field masks.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     The update mask applies to the resource. For the `FieldMask` definition,
          #     see
          #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
          #     If not set, defaults to all of the fields that are allowed to update.
          #
          #     Updates to the `name` and `dataPolicyId` fields are not allowed.
          class UpdateDataPolicyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the DeleteDataPolicy method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the data policy to delete. Format is
          #     `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
          class DeleteDataPolicyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the GetDataPolicy method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the requested data policy. Format is
          #     `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
          class GetDataPolicyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the ListDataPolicies method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Resource name of the project for which to list data policies. Format is
          #     `projects/{project_number}/locations/{location_id}`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of data policies to return. Must be a value between 1
          #     and 1000.
          #     If not set, defaults to 50.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The `nextPageToken` value returned from a previous list request, if any. If
          #     not set, defaults to an empty string.
          class ListDataPoliciesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for the ListDataPolicies method.
          # @!attribute [rw] data_policies
          #   @return [::Array<::Google::Cloud::Bigquery::DataPolicies::V1beta1::DataPolicy>]
          #     Data policies that belong to the requested project.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token used to retrieve the next page of results, or empty if there are no
          #     more results.
          class ListDataPoliciesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents the label-policy binding.
          # @!attribute [rw] policy_tag
          #   @return [::String]
          #     Policy tag resource name, in the format of
          #     `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
          # @!attribute [rw] data_masking_policy
          #   @return [::Google::Cloud::Bigquery::DataPolicies::V1beta1::DataMaskingPolicy]
          #     The data masking policy that specifies the data masking rule to use.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. Resource name of this data policy, in the format of
          #     `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
          # @!attribute [rw] data_policy_type
          #   @return [::Google::Cloud::Bigquery::DataPolicies::V1beta1::DataPolicy::DataPolicyType]
          #     Type of data policy.
          # @!attribute [rw] data_policy_id
          #   @return [::String]
          #     User-assigned (human readable) ID of the data policy that needs to be
          #     unique within a project. Used as \\{data_policy_id} in part of the resource
          #     name.
          class DataPolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A list of supported data policy types.
            module DataPolicyType
              # Default value for the data policy type. This should not be used.
              DATA_POLICY_TYPE_UNSPECIFIED = 0

              # Used to create a data policy for column-level security, without data
              # masking.
              COLUMN_LEVEL_SECURITY_POLICY = 3

              # Used to create a data policy for data masking.
              DATA_MASKING_POLICY = 2
            end
          end

          # The data masking policy that is used to specify data masking rule.
          # @!attribute [rw] predefined_expression
          #   @return [::Google::Cloud::Bigquery::DataPolicies::V1beta1::DataMaskingPolicy::PredefinedExpression]
          #     A predefined masking expression.
          class DataMaskingPolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The available masking rules. Learn more here:
            # https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options.
            module PredefinedExpression
              # Default, unspecified predefined expression. No masking will take place
              # since no expression is specified.
              PREDEFINED_EXPRESSION_UNSPECIFIED = 0

              # Masking expression to replace data with SHA-256 hash.
              SHA256 = 3

              # Masking expression to replace data with NULLs.
              ALWAYS_NULL = 5

              # Masking expression to replace data with their default masking values.
              # The default masking values for each type listed as below:
              #
              # * STRING: ""
              # * BYTES: b''
              # * INTEGER: 0
              # * FLOAT: 0.0
              # * NUMERIC: 0
              # * BOOLEAN: FALSE
              # * TIMESTAMP: 0001-01-01 00:00:00 UTC
              # * DATE: 0001-01-01
              # * TIME: 00:00:00
              # * DATETIME: 0001-01-01T00:00:00
              # * GEOGRAPHY: POINT(0 0)
              # * BIGNUMERIC: 0
              # * ARRAY: []
              # * STRUCT: NOT_APPLICABLE
              # * JSON: NULL
              DEFAULT_MASKING_VALUE = 7
            end
          end
        end
      end
    end
  end
end