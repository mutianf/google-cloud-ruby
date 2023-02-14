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
  module Analytics
    module Admin
      module V1alpha
        # A specific filter for a single dimension
        # @!attribute [rw] string_filter
        #   @return [::Google::Analytics::Admin::V1alpha::ExpandedDataSetFilter::StringFilter]
        #     A filter for a string-type dimension that matches a particular pattern.
        # @!attribute [rw] in_list_filter
        #   @return [::Google::Analytics::Admin::V1alpha::ExpandedDataSetFilter::InListFilter]
        #     A filter for a string dimension that matches a particular list of
        #     options.
        # @!attribute [rw] field_name
        #   @return [::String]
        #     Required. The dimension name to filter.
        class ExpandedDataSetFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A filter for a string-type dimension that matches a particular pattern.
          # @!attribute [rw] match_type
          #   @return [::Google::Analytics::Admin::V1alpha::ExpandedDataSetFilter::StringFilter::MatchType]
          #     Required. The match type for the string filter.
          # @!attribute [rw] value
          #   @return [::String]
          #     Required. The string value to be matched against.
          # @!attribute [rw] case_sensitive
          #   @return [::Boolean]
          #     Optional. If true, the match is case-sensitive. If false, the match is
          #     case-insensitive.
          #     Must be true when match_type is EXACT.
          #     Must be false when match_type is CONTAINS.
          class StringFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The match type for the string filter.
            module MatchType
              # Unspecified
              MATCH_TYPE_UNSPECIFIED = 0

              # Exact match of the string value.
              EXACT = 1

              # Contains the string value.
              CONTAINS = 2
            end
          end

          # A filter for a string dimension that matches a particular list of options.
          # @!attribute [rw] values
          #   @return [::Array<::String>]
          #     Required. The list of possible string values to match against. Must be
          #     non-empty.
          # @!attribute [rw] case_sensitive
          #   @return [::Boolean]
          #     Optional. If true, the match is case-sensitive. If false, the match is
          #     case-insensitive.
          #     Must be true.
          class InListFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A logical expression of EnhancedDataSet dimension filters.
        # @!attribute [rw] and_group
        #   @return [::Google::Analytics::Admin::V1alpha::ExpandedDataSetFilterExpressionList]
        #     A list of expressions to be AND’ed together. It must contain a
        #     ExpandedDataSetFilterExpression with either not_expression or
        #     dimension_filter. This must be set for the top level
        #     ExpandedDataSetFilterExpression.
        # @!attribute [rw] not_expression
        #   @return [::Google::Analytics::Admin::V1alpha::ExpandedDataSetFilterExpression]
        #     A filter expression to be NOT'ed (i.e., inverted, complemented). It
        #     must include a dimension_filter. This cannot be set on the
        #     top level ExpandedDataSetFilterExpression.
        # @!attribute [rw] filter
        #   @return [::Google::Analytics::Admin::V1alpha::ExpandedDataSetFilter]
        #     A filter on a single dimension. This cannot be set on the top
        #     level ExpandedDataSetFilterExpression.
        class ExpandedDataSetFilterExpression
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A list of ExpandedDataSet filter expressions.
        # @!attribute [rw] filter_expressions
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::ExpandedDataSetFilterExpression>]
        #     A list of ExpandedDataSet filter expressions.
        class ExpandedDataSetFilterExpressionList
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A resource message representing a GA4 ExpandedDataSet.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name for this ExpandedDataSet resource.
        #     Format: properties/\\{property_id}/expandedDataSets/\\{expanded_data_set}
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the ExpandedDataSet.
        #     Max 200 chars.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The description of the ExpandedDataSet.
        #     Max 50 chars.
        # @!attribute [rw] dimension_names
        #   @return [::Array<::String>]
        #     Immutable. The list of dimensions included in the ExpandedDataSet.
        #     See the [API
        #     Dimensions](https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#dimensions)
        #     for the list of dimension names.
        # @!attribute [rw] metric_names
        #   @return [::Array<::String>]
        #     Immutable. The list of metrics included in the ExpandedDataSet.
        #     See the [API
        #     Metrics](https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#metrics)
        #     for the list of dimension names.
        # @!attribute [rw] dimension_filter_expression
        #   @return [::Google::Analytics::Admin::V1alpha::ExpandedDataSetFilterExpression]
        #     Immutable. A logical expression of ExpandedDataSet filters applied to
        #     dimension included in the ExpandedDataSet. This filter is used to reduce
        #     the number of rows and thus the change of encountering `other row`.
        # @!attribute [r] data_collection_start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when expanded data set began (or will begin) collecing
        #     data.
        class ExpandedDataSet
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end