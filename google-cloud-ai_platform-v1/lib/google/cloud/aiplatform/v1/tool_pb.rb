# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/tool.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/aiplatform/v1/openapi_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n%google/cloud/aiplatform/v1/tool.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a(google/cloud/aiplatform/v1/openapi.proto\x1a\x1cgoogle/protobuf/struct.proto\"[\n\x04Tool\x12S\n\x15\x66unction_declarations\x18\x01 \x03(\x0b\x32/.google.cloud.aiplatform.v1.FunctionDeclarationB\x03\xe0\x41\x01\"\x7f\n\x13\x46unctionDeclaration\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12;\n\nparameters\x18\x03 \x01(\x0b\x32\".google.cloud.aiplatform.v1.SchemaB\x03\xe0\x41\x01\"M\n\x0c\x46unctionCall\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12*\n\x04\x61rgs\x18\x02 \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x01\"U\n\x10\x46unctionResponse\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12.\n\x08response\x18\x02 \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x02\x42\xc7\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\tToolProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.cloud.aiplatform.v1.Schema", "google/cloud/aiplatform/v1/openapi.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
    module AIPlatform
      module V1
        Tool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Tool").msgclass
        FunctionDeclaration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FunctionDeclaration").msgclass
        FunctionCall = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FunctionCall").msgclass
        FunctionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FunctionResponse").msgclass
      end
    end
  end
end
