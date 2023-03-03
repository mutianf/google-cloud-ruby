# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/devtools/cloudbuild/v2/repositories.proto for package 'Google.Cloud.Build.V2'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/devtools/cloudbuild/v2/repositories_pb'

module Google
  module Cloud
    module Build
      module V2
        module RepositoryManager
          # Manages connections to source code repostiories.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.devtools.cloudbuild.v2.RepositoryManager'

            # Creates a Connection.
            rpc :CreateConnection, ::Google::Cloud::Build::V2::CreateConnectionRequest, ::Google::Longrunning::Operation
            # Gets details of a single connection.
            rpc :GetConnection, ::Google::Cloud::Build::V2::GetConnectionRequest, ::Google::Cloud::Build::V2::Connection
            # Lists Connections in a given project and location.
            rpc :ListConnections, ::Google::Cloud::Build::V2::ListConnectionsRequest, ::Google::Cloud::Build::V2::ListConnectionsResponse
            # Updates a single connection.
            rpc :UpdateConnection, ::Google::Cloud::Build::V2::UpdateConnectionRequest, ::Google::Longrunning::Operation
            # Deletes a single connection.
            rpc :DeleteConnection, ::Google::Cloud::Build::V2::DeleteConnectionRequest, ::Google::Longrunning::Operation
            # Creates a Repository.
            rpc :CreateRepository, ::Google::Cloud::Build::V2::CreateRepositoryRequest, ::Google::Longrunning::Operation
            # Creates multiple repositories inside a connection.
            rpc :BatchCreateRepositories, ::Google::Cloud::Build::V2::BatchCreateRepositoriesRequest, ::Google::Longrunning::Operation
            # Gets details of a single repository.
            rpc :GetRepository, ::Google::Cloud::Build::V2::GetRepositoryRequest, ::Google::Cloud::Build::V2::Repository
            # Lists Repositories in a given connection.
            rpc :ListRepositories, ::Google::Cloud::Build::V2::ListRepositoriesRequest, ::Google::Cloud::Build::V2::ListRepositoriesResponse
            # Deletes a single repository.
            rpc :DeleteRepository, ::Google::Cloud::Build::V2::DeleteRepositoryRequest, ::Google::Longrunning::Operation
            # Fetches read/write token of a given repository.
            rpc :FetchReadWriteToken, ::Google::Cloud::Build::V2::FetchReadWriteTokenRequest, ::Google::Cloud::Build::V2::FetchReadWriteTokenResponse
            # Fetches read token of a given repository.
            rpc :FetchReadToken, ::Google::Cloud::Build::V2::FetchReadTokenRequest, ::Google::Cloud::Build::V2::FetchReadTokenResponse
            # FetchLinkableRepositories get repositories from SCM that are
            # accessible and could be added to the connection.
            rpc :FetchLinkableRepositories, ::Google::Cloud::Build::V2::FetchLinkableRepositoriesRequest, ::Google::Cloud::Build::V2::FetchLinkableRepositoriesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end