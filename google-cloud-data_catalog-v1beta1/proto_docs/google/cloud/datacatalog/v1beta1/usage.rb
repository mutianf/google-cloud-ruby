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
    module DataCatalog
      module V1beta1
        # Detailed counts on the entry's usage.
        # Caveats:
        #   - Only BigQuery tables have usage stats
        #   - The usage stats only include BigQuery query jobs
        #   - The usage stats might be underestimated, e.g. wildcard table references
        #     are not yet counted in usage computation
        #     https://cloud.google.com/bigquery/docs/querying-wildcard-tables
        # @!attribute [rw] total_completions
        #   @return [::Float]
        #     The number of times that the underlying entry was successfully used.
        # @!attribute [rw] total_failures
        #   @return [::Float]
        #     The number of times that the underlying entry was attempted to be used
        #     but failed.
        # @!attribute [rw] total_cancellations
        #   @return [::Float]
        #     The number of times that the underlying entry was attempted to be used
        #     but was cancelled by the user.
        # @!attribute [rw] total_execution_time_for_completions_millis
        #   @return [::Float]
        #     Total time spent (in milliseconds) during uses the resulted in completions.
        class UsageStats
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The set of all usage signals that we store in Data Catalog.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp of the end of the usage statistics duration.
        # @!attribute [rw] usage_within_time_range
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::DataCatalog::V1beta1::UsageStats}]
        #     Usage statistics over each of the pre-defined time ranges, supported
        #     strings for time ranges are \\{"24H", "7D", "30D"}.
        class UsageSignal
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::DataCatalog::V1beta1::UsageStats]
          class UsageWithinTimeRangeEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end