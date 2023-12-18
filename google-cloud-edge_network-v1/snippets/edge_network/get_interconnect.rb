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

# [START edgenetwork_v1_generated_EdgeNetwork_GetInterconnect_sync]
require "google/cloud/edge_network/v1"

##
# Snippet for the get_interconnect call in the EdgeNetwork service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client#get_interconnect. It may
# require modification in order to execute successfully.
#
def get_interconnect
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::EdgeNetwork::V1::EdgeNetwork::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::EdgeNetwork::V1::GetInterconnectRequest.new

  # Call the get_interconnect method.
  result = client.get_interconnect request

  # The returned object is of type Google::Cloud::EdgeNetwork::V1::Interconnect.
  p result
end
# [END edgenetwork_v1_generated_EdgeNetwork_GetInterconnect_sync]
