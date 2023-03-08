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

# [START batch_v1_generated_IAMPolicy_TestIamPermissions_sync]
require "google/iam/v1"

##
# Snippet for the test_iam_permissions call in the IAMPolicy service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Iam::V1::IAMPolicy::Client#test_iam_permissions. It may require
# modification in order to execute successfully.
#
def test_iam_permissions
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Iam::V1::IAMPolicy::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Iam::V1::TestIamPermissionsRequest.new

  # Call the test_iam_permissions method.
  result = client.test_iam_permissions request

  # The returned object is of type Google::Iam::V1::TestIamPermissionsResponse.
  p result
end
# [END batch_v1_generated_IAMPolicy_TestIamPermissions_sync]