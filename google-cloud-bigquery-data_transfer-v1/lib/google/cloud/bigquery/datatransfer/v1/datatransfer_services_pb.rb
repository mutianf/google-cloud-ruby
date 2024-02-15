# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/bigquery/datatransfer/v1/datatransfer.proto for package 'Google.Cloud.Bigquery.DataTransfer.V1'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/bigquery/datatransfer/v1/datatransfer_pb'

module Google
  module Cloud
    module Bigquery
      module DataTransfer
        module V1
          module DataTransferService
            # This API allows users to manage their data transfers into BigQuery.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.bigquery.datatransfer.v1.DataTransferService'

              # Retrieves a supported data source and returns its settings.
              rpc :GetDataSource, ::Google::Cloud::Bigquery::DataTransfer::V1::GetDataSourceRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::DataSource
              # Lists supported data sources and returns their settings.
              rpc :ListDataSources, ::Google::Cloud::Bigquery::DataTransfer::V1::ListDataSourcesRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::ListDataSourcesResponse
              # Creates a new data transfer configuration.
              rpc :CreateTransferConfig, ::Google::Cloud::Bigquery::DataTransfer::V1::CreateTransferConfigRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::TransferConfig
              # Updates a data transfer configuration.
              # All fields must be set, even if they are not updated.
              rpc :UpdateTransferConfig, ::Google::Cloud::Bigquery::DataTransfer::V1::UpdateTransferConfigRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::TransferConfig
              # Deletes a data transfer configuration, including any associated transfer
              # runs and logs.
              rpc :DeleteTransferConfig, ::Google::Cloud::Bigquery::DataTransfer::V1::DeleteTransferConfigRequest, ::Google::Protobuf::Empty
              # Returns information about a data transfer config.
              rpc :GetTransferConfig, ::Google::Cloud::Bigquery::DataTransfer::V1::GetTransferConfigRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::TransferConfig
              # Returns information about all transfer configs owned by a project in the
              # specified location.
              rpc :ListTransferConfigs, ::Google::Cloud::Bigquery::DataTransfer::V1::ListTransferConfigsRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::ListTransferConfigsResponse
              # Creates transfer runs for a time range [start_time, end_time].
              # For each date - or whatever granularity the data source supports - in the
              # range, one transfer run is created.
              # Note that runs are created per UTC time in the time range.
              # DEPRECATED: use StartManualTransferRuns instead.
              rpc :ScheduleTransferRuns, ::Google::Cloud::Bigquery::DataTransfer::V1::ScheduleTransferRunsRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::ScheduleTransferRunsResponse
              # Start manual transfer runs to be executed now with schedule_time equal to
              # current time. The transfer runs can be created for a time range where the
              # run_time is between start_time (inclusive) and end_time (exclusive), or for
              # a specific run_time.
              rpc :StartManualTransferRuns, ::Google::Cloud::Bigquery::DataTransfer::V1::StartManualTransferRunsRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::StartManualTransferRunsResponse
              # Returns information about the particular transfer run.
              rpc :GetTransferRun, ::Google::Cloud::Bigquery::DataTransfer::V1::GetTransferRunRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::TransferRun
              # Deletes the specified transfer run.
              rpc :DeleteTransferRun, ::Google::Cloud::Bigquery::DataTransfer::V1::DeleteTransferRunRequest, ::Google::Protobuf::Empty
              # Returns information about running and completed transfer runs.
              rpc :ListTransferRuns, ::Google::Cloud::Bigquery::DataTransfer::V1::ListTransferRunsRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::ListTransferRunsResponse
              # Returns log messages for the transfer run.
              rpc :ListTransferLogs, ::Google::Cloud::Bigquery::DataTransfer::V1::ListTransferLogsRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::ListTransferLogsResponse
              # Returns true if valid credentials exist for the given data source and
              # requesting user.
              rpc :CheckValidCreds, ::Google::Cloud::Bigquery::DataTransfer::V1::CheckValidCredsRequest, ::Google::Cloud::Bigquery::DataTransfer::V1::CheckValidCredsResponse
              # Enroll data sources in a user project. This allows users to create transfer
              # configurations for these data sources. They will also appear in the
              # ListDataSources RPC and as such, will appear in the
              # [BigQuery UI](https://console.cloud.google.com/bigquery), and the documents
              # can be found in the public guide for
              # [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-web-ui) and
              # [Data Transfer
              # Service](https://cloud.google.com/bigquery/docs/working-with-transfers).
              rpc :EnrollDataSources, ::Google::Cloud::Bigquery::DataTransfer::V1::EnrollDataSourcesRequest, ::Google::Protobuf::Empty
              # Unenroll data sources in a user project. This allows users to remove
              # transfer configurations for these data sources. They will no longer appear
              # in the ListDataSources RPC and will also no longer appear in the [BigQuery
              # UI](https://console.cloud.google.com/bigquery).
              rpc :UnenrollDataSources, ::Google::Cloud::Bigquery::DataTransfer::V1::UnenrollDataSourcesRequest, ::Google::Protobuf::Empty
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
