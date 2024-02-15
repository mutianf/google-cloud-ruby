# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/datatransfer/v1/datatransfer.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/bigquery/datatransfer/v1/transfer_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'


descriptor_data = "\n8google/cloud/bigquery/datatransfer/v1/datatransfer.proto\x12%google.cloud.bigquery.datatransfer.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x34google/cloud/bigquery/datatransfer/v1/transfer.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\"\x8f\x05\n\x13\x44\x61taSourceParameter\x12\x10\n\x08param_id\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12M\n\x04type\x18\x04 \x01(\x0e\x32?.google.cloud.bigquery.datatransfer.v1.DataSourceParameter.Type\x12\x10\n\x08required\x18\x05 \x01(\x08\x12\x10\n\x08repeated\x18\x06 \x01(\x08\x12\x18\n\x10validation_regex\x18\x07 \x01(\t\x12\x16\n\x0e\x61llowed_values\x18\x08 \x03(\t\x12/\n\tmin_value\x18\t \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12/\n\tmax_value\x18\n \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12J\n\x06\x66ields\x18\x0b \x03(\x0b\x32:.google.cloud.bigquery.datatransfer.v1.DataSourceParameter\x12\x1e\n\x16validation_description\x18\x0c \x01(\t\x12\x1b\n\x13validation_help_url\x18\r \x01(\t\x12\x11\n\timmutable\x18\x0e \x01(\x08\x12\x0f\n\x07recurse\x18\x0f \x01(\x08\x12\x12\n\ndeprecated\x18\x14 \x01(\x08\"s\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06STRING\x10\x01\x12\x0b\n\x07INTEGER\x10\x02\x12\n\n\x06\x44OUBLE\x10\x03\x12\x0b\n\x07\x42OOLEAN\x10\x04\x12\n\n\x06RECORD\x10\x05\x12\r\n\tPLUS_PAGE\x10\x06\x12\x08\n\x04LIST\x10\x07\"\x9c\t\n\nDataSource\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x16\n\x0e\x64\x61ta_source_id\x18\x02 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x04 \x01(\t\x12\x11\n\tclient_id\x18\x05 \x01(\t\x12\x0e\n\x06scopes\x18\x06 \x03(\t\x12N\n\rtransfer_type\x18\x07 \x01(\x0e\x32\x33.google.cloud.bigquery.datatransfer.v1.TransferTypeB\x02\x18\x01\x12\'\n\x1bsupports_multiple_transfers\x18\x08 \x01(\x08\x42\x02\x18\x01\x12\x1f\n\x17update_deadline_seconds\x18\t \x01(\x05\x12\x18\n\x10\x64\x65\x66\x61ult_schedule\x18\n \x01(\t\x12 \n\x18supports_custom_schedule\x18\x0b \x01(\x08\x12N\n\nparameters\x18\x0c \x03(\x0b\x32:.google.cloud.bigquery.datatransfer.v1.DataSourceParameter\x12\x10\n\x08help_url\x18\r \x01(\t\x12_\n\x12\x61uthorization_type\x18\x0e \x01(\x0e\x32\x43.google.cloud.bigquery.datatransfer.v1.DataSource.AuthorizationType\x12\\\n\x11\x64\x61ta_refresh_type\x18\x0f \x01(\x0e\x32\x41.google.cloud.bigquery.datatransfer.v1.DataSource.DataRefreshType\x12(\n default_data_refresh_window_days\x18\x10 \x01(\x05\x12\x1c\n\x14manual_runs_disabled\x18\x11 \x01(\x08\x12<\n\x19minimum_schedule_interval\x18\x12 \x01(\x0b\x32\x19.google.protobuf.Duration\"\x8a\x01\n\x11\x41uthorizationType\x12\"\n\x1e\x41UTHORIZATION_TYPE_UNSPECIFIED\x10\x00\x12\x16\n\x12\x41UTHORIZATION_CODE\x10\x01\x12\"\n\x1eGOOGLE_PLUS_AUTHORIZATION_CODE\x10\x02\x12\x15\n\x11\x46IRST_PARTY_OAUTH\x10\x03\"c\n\x0f\x44\x61taRefreshType\x12!\n\x1d\x44\x41TA_REFRESH_TYPE_UNSPECIFIED\x10\x00\x12\x12\n\x0eSLIDING_WINDOW\x10\x01\x12\x19\n\x15\x43USTOM_SLIDING_WINDOW\x10\x02:\xa5\x01\xea\x41\xa1\x01\n.bigquerydatatransfer.googleapis.com/DataSource\x12,projects/{project}/dataSources/{data_source}\x12\x41projects/{project}/locations/{location}/dataSources/{data_source}\"\\\n\x14GetDataSourceRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.bigquerydatatransfer.googleapis.com/DataSource\"\x87\x01\n\x16ListDataSourcesRequest\x12\x46\n\x06parent\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\x12.bigquerydatatransfer.googleapis.com/DataSource\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\"\x80\x01\n\x17ListDataSourcesResponse\x12G\n\x0c\x64\x61ta_sources\x18\x01 \x03(\x0b\x32\x31.google.cloud.bigquery.datatransfer.v1.DataSource\x12\x1c\n\x0fnext_page_token\x18\x02 \x01(\tB\x03\xe0\x41\x03\"\x8e\x02\n\x1b\x43reateTransferConfigRequest\x12J\n\x06parent\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\x12\x32\x62igquerydatatransfer.googleapis.com/TransferConfig\x12S\n\x0ftransfer_config\x18\x02 \x01(\x0b\x32\x35.google.cloud.bigquery.datatransfer.v1.TransferConfigB\x03\xe0\x41\x02\x12\x1a\n\x12\x61uthorization_code\x18\x03 \x01(\t\x12\x14\n\x0cversion_info\x18\x05 \x01(\t\x12\x1c\n\x14service_account_name\x18\x06 \x01(\t\"\xf8\x01\n\x1bUpdateTransferConfigRequest\x12S\n\x0ftransfer_config\x18\x01 \x01(\x0b\x32\x35.google.cloud.bigquery.datatransfer.v1.TransferConfigB\x03\xe0\x41\x02\x12\x1a\n\x12\x61uthorization_code\x18\x03 \x01(\t\x12\x34\n\x0bupdate_mask\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x14\n\x0cversion_info\x18\x05 \x01(\t\x12\x1c\n\x14service_account_name\x18\x06 \x01(\t\"d\n\x18GetTransferConfigRequest\x12H\n\x04name\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\n2bigquerydatatransfer.googleapis.com/TransferConfig\"g\n\x1b\x44\x65leteTransferConfigRequest\x12H\n\x04name\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\n2bigquerydatatransfer.googleapis.com/TransferConfig\"V\n\x15GetTransferRunRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'bigquerydatatransfer.googleapis.com/Run\"Y\n\x18\x44\x65leteTransferRunRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'bigquerydatatransfer.googleapis.com/Run\"\xa8\x01\n\x1aListTransferConfigsRequest\x12J\n\x06parent\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\x12\x32\x62igquerydatatransfer.googleapis.com/TransferConfig\x12\x17\n\x0f\x64\x61ta_source_ids\x18\x02 \x03(\t\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\"\x91\x01\n\x1bListTransferConfigsResponse\x12T\n\x10transfer_configs\x18\x01 \x03(\x0b\x32\x35.google.cloud.bigquery.datatransfer.v1.TransferConfigB\x03\xe0\x41\x03\x12\x1c\n\x0fnext_page_token\x18\x02 \x01(\tB\x03\xe0\x41\x03\"\xde\x02\n\x17ListTransferRunsRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'bigquerydatatransfer.googleapis.com/Run\x12\x44\n\x06states\x18\x02 \x03(\x0e\x32\x34.google.cloud.bigquery.datatransfer.v1.TransferState\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12^\n\x0brun_attempt\x18\x05 \x01(\x0e\x32I.google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest.RunAttempt\"5\n\nRunAttempt\x12\x1b\n\x17RUN_ATTEMPT_UNSPECIFIED\x10\x00\x12\n\n\x06LATEST\x10\x01\"\x88\x01\n\x18ListTransferRunsResponse\x12N\n\rtransfer_runs\x18\x01 \x03(\x0b\x32\x32.google.cloud.bigquery.datatransfer.v1.TransferRunB\x03\xe0\x41\x03\x12\x1c\n\x0fnext_page_token\x18\x02 \x01(\tB\x03\xe0\x41\x03\"\xe0\x01\n\x17ListTransferLogsRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'bigquerydatatransfer.googleapis.com/Run\x12\x12\n\npage_token\x18\x04 \x01(\t\x12\x11\n\tpage_size\x18\x05 \x01(\x05\x12]\n\rmessage_types\x18\x06 \x03(\x0e\x32\x46.google.cloud.bigquery.datatransfer.v1.TransferMessage.MessageSeverity\"\x90\x01\n\x18ListTransferLogsResponse\x12V\n\x11transfer_messages\x18\x01 \x03(\x0b\x32\x36.google.cloud.bigquery.datatransfer.v1.TransferMessageB\x03\xe0\x41\x03\x12\x1c\n\x0fnext_page_token\x18\x02 \x01(\tB\x03\xe0\x41\x03\"^\n\x16\x43heckValidCredsRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.bigquerydatatransfer.googleapis.com/DataSource\"2\n\x17\x43heckValidCredsResponse\x12\x17\n\x0fhas_valid_creds\x18\x01 \x01(\x08\"\xd1\x01\n\x1bScheduleTransferRunsRequest\x12J\n\x06parent\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\n2bigquerydatatransfer.googleapis.com/TransferConfig\x12\x33\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x02\x12\x31\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x02\"`\n\x1cScheduleTransferRunsResponse\x12@\n\x04runs\x18\x01 \x03(\x0b\x32\x32.google.cloud.bigquery.datatransfer.v1.TransferRun\"\x87\x03\n\x1eStartManualTransferRunsRequest\x12G\n\x06parent\x18\x01 \x01(\tB7\xfa\x41\x34\n2bigquerydatatransfer.googleapis.com/TransferConfig\x12o\n\x14requested_time_range\x18\x03 \x01(\x0b\x32O.google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest.TimeRangeH\x00\x12\x38\n\x12requested_run_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x00\x1ai\n\tTimeRange\x12.\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x06\n\x04time\"c\n\x1fStartManualTransferRunsResponse\x12@\n\x04runs\x18\x01 \x03(\x0b\x32\x32.google.cloud.bigquery.datatransfer.v1.TransferRun\"A\n\x18\x45nrollDataSourcesRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x17\n\x0f\x64\x61ta_source_ids\x18\x02 \x03(\t\"C\n\x1aUnenrollDataSourcesRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x17\n\x0f\x64\x61ta_source_ids\x18\x02 \x03(\t2\xd5\"\n\x13\x44\x61taTransferService\x12\xe6\x01\n\rGetDataSource\x12;.google.cloud.bigquery.datatransfer.v1.GetDataSourceRequest\x1a\x31.google.cloud.bigquery.datatransfer.v1.DataSource\"e\xda\x41\x04name\x82\xd3\xe4\x93\x02X\x12//v1/{name=projects/*/locations/*/dataSources/*}Z%\x12#/v1/{name=projects/*/dataSources/*}\x12\xf9\x01\n\x0fListDataSources\x12=.google.cloud.bigquery.datatransfer.v1.ListDataSourcesRequest\x1a>.google.cloud.bigquery.datatransfer.v1.ListDataSourcesResponse\"g\xda\x41\x06parent\x82\xd3\xe4\x93\x02X\x12//v1/{parent=projects/*/locations/*}/dataSourcesZ%\x12#/v1/{parent=projects/*}/dataSources\x12\xb6\x02\n\x14\x43reateTransferConfig\x12\x42.google.cloud.bigquery.datatransfer.v1.CreateTransferConfigRequest\x1a\x35.google.cloud.bigquery.datatransfer.v1.TransferConfig\"\xa2\x01\xda\x41\x16parent,transfer_config\x82\xd3\xe4\x93\x02\x82\x01\"3/v1/{parent=projects/*/locations/*}/transferConfigs:\x0ftransfer_configZ:\"\'/v1/{parent=projects/*}/transferConfigs:\x0ftransfer_config\x12\xdb\x02\n\x14UpdateTransferConfig\x12\x42.google.cloud.bigquery.datatransfer.v1.UpdateTransferConfigRequest\x1a\x35.google.cloud.bigquery.datatransfer.v1.TransferConfig\"\xc7\x01\xda\x41\x1btransfer_config,update_mask\x82\xd3\xe4\x93\x02\xa2\x01\x32\x43/v1/{transfer_config.name=projects/*/locations/*/transferConfigs/*}:\x0ftransfer_configZJ27/v1/{transfer_config.name=projects/*/transferConfigs/*}:\x0ftransfer_config\x12\xe1\x01\n\x14\x44\x65leteTransferConfig\x12\x42.google.cloud.bigquery.datatransfer.v1.DeleteTransferConfigRequest\x1a\x16.google.protobuf.Empty\"m\xda\x41\x04name\x82\xd3\xe4\x93\x02`*3/v1/{name=projects/*/locations/*/transferConfigs/*}Z)*\'/v1/{name=projects/*/transferConfigs/*}\x12\xfa\x01\n\x11GetTransferConfig\x12?.google.cloud.bigquery.datatransfer.v1.GetTransferConfigRequest\x1a\x35.google.cloud.bigquery.datatransfer.v1.TransferConfig\"m\xda\x41\x04name\x82\xd3\xe4\x93\x02`\x12\x33/v1/{name=projects/*/locations/*/transferConfigs/*}Z)\x12\'/v1/{name=projects/*/transferConfigs/*}\x12\x8d\x02\n\x13ListTransferConfigs\x12\x41.google.cloud.bigquery.datatransfer.v1.ListTransferConfigsRequest\x1a\x42.google.cloud.bigquery.datatransfer.v1.ListTransferConfigsResponse\"o\xda\x41\x06parent\x82\xd3\xe4\x93\x02`\x12\x33/v1/{parent=projects/*/locations/*}/transferConfigsZ)\x12\'/v1/{parent=projects/*}/transferConfigs\x12\xcd\x02\n\x14ScheduleTransferRuns\x12\x42.google.cloud.bigquery.datatransfer.v1.ScheduleTransferRunsRequest\x1a\x43.google.cloud.bigquery.datatransfer.v1.ScheduleTransferRunsResponse\"\xab\x01\x88\x02\x01\xda\x41\x1aparent,start_time,end_time\x82\xd3\xe4\x93\x02\x84\x01\"B/v1/{parent=projects/*/locations/*/transferConfigs/*}:scheduleRuns:\x01*Z;\"6/v1/{parent=projects/*/transferConfigs/*}:scheduleRuns:\x01*\x12\xbc\x02\n\x17StartManualTransferRuns\x12\x45.google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest\x1a\x46.google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsResponse\"\x91\x01\x82\xd3\xe4\x93\x02\x8a\x01\"E/v1/{parent=projects/*/locations/*/transferConfigs/*}:startManualRuns:\x01*Z>\"9/v1/{parent=projects/*/transferConfigs/*}:startManualRuns:\x01*\x12\xff\x01\n\x0eGetTransferRun\x12<.google.cloud.bigquery.datatransfer.v1.GetTransferRunRequest\x1a\x32.google.cloud.bigquery.datatransfer.v1.TransferRun\"{\xda\x41\x04name\x82\xd3\xe4\x93\x02n\x12:/v1/{name=projects/*/locations/*/transferConfigs/*/runs/*}Z0\x12./v1/{name=projects/*/transferConfigs/*/runs/*}\x12\xe9\x01\n\x11\x44\x65leteTransferRun\x12?.google.cloud.bigquery.datatransfer.v1.DeleteTransferRunRequest\x1a\x16.google.protobuf.Empty\"{\xda\x41\x04name\x82\xd3\xe4\x93\x02n*:/v1/{name=projects/*/locations/*/transferConfigs/*/runs/*}Z0*./v1/{name=projects/*/transferConfigs/*/runs/*}\x12\x92\x02\n\x10ListTransferRuns\x12>.google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest\x1a?.google.cloud.bigquery.datatransfer.v1.ListTransferRunsResponse\"}\xda\x41\x06parent\x82\xd3\xe4\x93\x02n\x12:/v1/{parent=projects/*/locations/*/transferConfigs/*}/runsZ0\x12./v1/{parent=projects/*/transferConfigs/*}/runs\x12\xb2\x02\n\x10ListTransferLogs\x12>.google.cloud.bigquery.datatransfer.v1.ListTransferLogsRequest\x1a?.google.cloud.bigquery.datatransfer.v1.ListTransferLogsResponse\"\x9c\x01\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x8c\x01\x12I/v1/{parent=projects/*/locations/*/transferConfigs/*/runs/*}/transferLogsZ?\x12=/v1/{parent=projects/*/transferConfigs/*/runs/*}/transferLogs\x12\x9e\x02\n\x0f\x43heckValidCreds\x12=.google.cloud.bigquery.datatransfer.v1.CheckValidCredsRequest\x1a>.google.cloud.bigquery.datatransfer.v1.CheckValidCredsResponse\"\x8b\x01\xda\x41\x04name\x82\xd3\xe4\x93\x02~\"?/v1/{name=projects/*/locations/*/dataSources/*}:checkValidCreds:\x01*Z8\"3/v1/{name=projects/*/dataSources/*}:checkValidCreds:\x01*\x12\xda\x01\n\x11\x45nrollDataSources\x12?.google.cloud.bigquery.datatransfer.v1.EnrollDataSourcesRequest\x1a\x16.google.protobuf.Empty\"l\x82\xd3\xe4\x93\x02\x66\"3/v1/{name=projects/*/locations/*}:enrollDataSources:\x01*Z,\"\'/v1/{name=projects/*}:enrollDataSources:\x01*\x12\xb2\x01\n\x13UnenrollDataSources\x12\x41.google.cloud.bigquery.datatransfer.v1.UnenrollDataSourcesRequest\x1a\x16.google.protobuf.Empty\"@\x82\xd3\xe4\x93\x02:\"5/v1/{name=projects/*/locations/*}:unenrollDataSources:\x01*\x1aW\xca\x41#bigquerydatatransfer.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x8b\x02\n)com.google.cloud.bigquery.datatransfer.v1B\x11\x44\x61taTransferProtoP\x01ZMcloud.google.com/go/bigquery/datatransfer/apiv1/datatransferpb;datatransferpb\xaa\x02%Google.Cloud.BigQuery.DataTransfer.V1\xca\x02%Google\\Cloud\\BigQuery\\DataTransfer\\V1\xea\x02)Google::Cloud::Bigquery::DataTransfer::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.DoubleValue", "google/protobuf/wrappers.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.cloud.bigquery.datatransfer.v1.TransferConfig", "google/cloud/bigquery/datatransfer/v1/transfer.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Bigquery
      module DataTransfer
        module V1
          DataSourceParameter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSourceParameter").msgclass
          DataSourceParameter::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSourceParameter.Type").enummodule
          DataSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSource").msgclass
          DataSource::AuthorizationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSource.AuthorizationType").enummodule
          DataSource::DataRefreshType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DataSource.DataRefreshType").enummodule
          GetDataSourceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.GetDataSourceRequest").msgclass
          ListDataSourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListDataSourcesRequest").msgclass
          ListDataSourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListDataSourcesResponse").msgclass
          CreateTransferConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.CreateTransferConfigRequest").msgclass
          UpdateTransferConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.UpdateTransferConfigRequest").msgclass
          GetTransferConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.GetTransferConfigRequest").msgclass
          DeleteTransferConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DeleteTransferConfigRequest").msgclass
          GetTransferRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.GetTransferRunRequest").msgclass
          DeleteTransferRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.DeleteTransferRunRequest").msgclass
          ListTransferConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferConfigsRequest").msgclass
          ListTransferConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferConfigsResponse").msgclass
          ListTransferRunsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest").msgclass
          ListTransferRunsRequest::RunAttempt = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferRunsRequest.RunAttempt").enummodule
          ListTransferRunsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferRunsResponse").msgclass
          ListTransferLogsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferLogsRequest").msgclass
          ListTransferLogsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ListTransferLogsResponse").msgclass
          CheckValidCredsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.CheckValidCredsRequest").msgclass
          CheckValidCredsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.CheckValidCredsResponse").msgclass
          ScheduleTransferRunsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ScheduleTransferRunsRequest").msgclass
          ScheduleTransferRunsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ScheduleTransferRunsResponse").msgclass
          StartManualTransferRunsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest").msgclass
          StartManualTransferRunsRequest::TimeRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsRequest.TimeRange").msgclass
          StartManualTransferRunsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.StartManualTransferRunsResponse").msgclass
          EnrollDataSourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.EnrollDataSourcesRequest").msgclass
          UnenrollDataSourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.UnenrollDataSourcesRequest").msgclass
        end
      end
    end
  end
end
