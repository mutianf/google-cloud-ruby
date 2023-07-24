# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/livestream/v1/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/video/livestream/v1/outputs_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n0google/cloud/video/livestream/v1/resources.proto\x12 google.cloud.video.livestream.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a.google/cloud/video/livestream/v1/outputs.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xf0\x06\n\x05Input\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x43\n\x06labels\x18\x04 \x03(\x0b\x32\x33.google.cloud.video.livestream.v1.Input.LabelsEntry\x12:\n\x04type\x18\x05 \x01(\x0e\x32,.google.cloud.video.livestream.v1.Input.Type\x12:\n\x04tier\x18\x0e \x01(\x0e\x32,.google.cloud.video.livestream.v1.Input.Tier\x12\x10\n\x03uri\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12S\n\x14preprocessing_config\x18\t \x01(\x0b\x32\x35.google.cloud.video.livestream.v1.PreprocessingConfig\x12L\n\x0esecurity_rules\x18\x0c \x01(\x0b\x32\x34.google.cloud.video.livestream.v1.Input.SecurityRule\x12Y\n\x15input_stream_property\x18\x0f \x01(\x0b\x32\x35.google.cloud.video.livestream.v1.InputStreamPropertyB\x03\xe0\x41\x03\x1a!\n\x0cSecurityRule\x12\x11\n\tip_ranges\x18\x01 \x03(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"9\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\r\n\tRTMP_PUSH\x10\x01\x12\x0c\n\x08SRT_PUSH\x10\x02\"5\n\x04Tier\x12\x14\n\x10TIER_UNSPECIFIED\x10\x00\x12\x06\n\x02SD\x10\x01\x12\x06\n\x02HD\x10\x02\x12\x07\n\x03UHD\x10\x03:\\\xea\x41Y\n\x1flivestream.googleapis.com/Input\x12\x36projects/{project}/locations/{location}/inputs/{input}\"\x86\x0b\n\x07\x43hannel\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x45\n\x06labels\x18\x04 \x03(\x0b\x32\x35.google.cloud.video.livestream.v1.Channel.LabelsEntry\x12L\n\x11input_attachments\x18\x10 \x03(\x0b\x32\x31.google.cloud.video.livestream.v1.InputAttachment\x12\x19\n\x0c\x61\x63tive_input\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12\x45\n\x06output\x18\t \x01(\x0b\x32\x30.google.cloud.video.livestream.v1.Channel.OutputB\x03\xe0\x41\x02\x12N\n\x12\x65lementary_streams\x18\n \x03(\x0b\x32\x32.google.cloud.video.livestream.v1.ElementaryStream\x12@\n\x0bmux_streams\x18\x0b \x03(\x0b\x32+.google.cloud.video.livestream.v1.MuxStream\x12=\n\tmanifests\x18\x0c \x03(\x0b\x32*.google.cloud.video.livestream.v1.Manifest\x12\x44\n\rsprite_sheets\x18\r \x03(\x0b\x32-.google.cloud.video.livestream.v1.SpriteSheet\x12V\n\x0fstreaming_state\x18\x0e \x01(\x0e\x32\x38.google.cloud.video.livestream.v1.Channel.StreamingStateB\x03\xe0\x41\x03\x12\x30\n\x0fstreaming_error\x18\x12 \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12?\n\nlog_config\x18\x13 \x01(\x0b\x32+.google.cloud.video.livestream.v1.LogConfig\x12I\n\x0ftimecode_config\x18\x15 \x01(\x0b\x32\x30.google.cloud.video.livestream.v1.TimecodeConfig\x12\x41\n\x0b\x65ncryptions\x18\x18 \x03(\x0b\x32,.google.cloud.video.livestream.v1.Encryption\x12\x43\n\x0cinput_config\x18\x19 \x01(\x0b\x32-.google.cloud.video.livestream.v1.InputConfig\x1a\x15\n\x06Output\x12\x0b\n\x03uri\x18\x01 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xaa\x01\n\x0eStreamingState\x12\x1f\n\x1bSTREAMING_STATE_UNSPECIFIED\x10\x00\x12\r\n\tSTREAMING\x10\x01\x12\x12\n\x0e\x41WAITING_INPUT\x10\x02\x12\x13\n\x0fSTREAMING_ERROR\x10\x04\x12\x16\n\x12STREAMING_NO_INPUT\x10\x05\x12\x0b\n\x07STOPPED\x10\x06\x12\x0c\n\x08STARTING\x10\x07\x12\x0c\n\x08STOPPING\x10\x08:b\xea\x41_\n!livestream.googleapis.com/Channel\x12:projects/{project}/locations/{location}/channels/{channel}\"\xc6\x01\n\x0bInputConfig\x12X\n\x11input_switch_mode\x18\x01 \x01(\x0e\x32=.google.cloud.video.livestream.v1.InputConfig.InputSwitchMode\"]\n\x0fInputSwitchMode\x12!\n\x1dINPUT_SWITCH_MODE_UNSPECIFIED\x10\x00\x12\x1b\n\x17\x46\x41ILOVER_PREFER_PRIMARY\x10\x01\x12\n\n\x06MANUAL\x10\x03\"\xc0\x01\n\tLogConfig\x12M\n\x0clog_severity\x18\x01 \x01(\x0e\x32\x37.google.cloud.video.livestream.v1.LogConfig.LogSeverity\"d\n\x0bLogSeverity\x12\x1c\n\x18LOG_SEVERITY_UNSPECIFIED\x10\x00\x12\x07\n\x03OFF\x10\x01\x12\t\n\x05\x44\x45\x42UG\x10\x64\x12\t\n\x04INFO\x10\xc8\x01\x12\x0c\n\x07WARNING\x10\x90\x03\x12\n\n\x05\x45RROR\x10\xf4\x03\"\xea\x01\n\x13InputStreamProperty\x12\x37\n\x13last_establish_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12L\n\rvideo_streams\x18\x02 \x03(\x0b\x32\x35.google.cloud.video.livestream.v1.VideoStreamProperty\x12L\n\raudio_streams\x18\x03 \x03(\x0b\x32\x35.google.cloud.video.livestream.v1.AudioStreamProperty\"i\n\x13VideoStreamProperty\x12\r\n\x05index\x18\x01 \x01(\x05\x12\x43\n\x0cvideo_format\x18\x02 \x01(\x0b\x32-.google.cloud.video.livestream.v1.VideoFormat\"]\n\x0bVideoFormat\x12\r\n\x05\x63odec\x18\x01 \x01(\t\x12\x14\n\x0cwidth_pixels\x18\x02 \x01(\x05\x12\x15\n\rheight_pixels\x18\x03 \x01(\x05\x12\x12\n\nframe_rate\x18\x04 \x01(\x01\"i\n\x13\x41udioStreamProperty\x12\r\n\x05index\x18\x01 \x01(\x05\x12\x43\n\x0c\x61udio_format\x18\x02 \x01(\x0b\x32-.google.cloud.video.livestream.v1.AudioFormat\"K\n\x0b\x41udioFormat\x12\r\n\x05\x63odec\x18\x01 \x01(\t\x12\x15\n\rchannel_count\x18\x02 \x01(\x05\x12\x16\n\x0e\x63hannel_layout\x18\x03 \x03(\t\"\xdd\x01\n\x0fInputAttachment\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x33\n\x05input\x18\x02 \x01(\tB$\xfa\x41!\n\x1flivestream.googleapis.com/Input\x12_\n\x12\x61utomatic_failover\x18\x03 \x01(\x0b\x32\x43.google.cloud.video.livestream.v1.InputAttachment.AutomaticFailover\x1a\'\n\x11\x41utomaticFailover\x12\x12\n\ninput_keys\x18\x01 \x03(\t\"\x82\x0b\n\x05\x45vent\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x43\n\x06labels\x18\x04 \x03(\x0b\x32\x33.google.cloud.video.livestream.v1.Event.LabelsEntry\x12O\n\x0cinput_switch\x18\x05 \x01(\x0b\x32\x37.google.cloud.video.livestream.v1.Event.InputSwitchTaskH\x00\x12G\n\x08\x61\x64_break\x18\x06 \x01(\x0b\x32\x33.google.cloud.video.livestream.v1.Event.AdBreakTaskH\x00\x12X\n\x11return_to_program\x18\r \x01(\x0b\x32;.google.cloud.video.livestream.v1.Event.ReturnToProgramTaskH\x00\x12\x42\n\x05slate\x18\x0e \x01(\x0b\x32\x31.google.cloud.video.livestream.v1.Event.SlateTaskH\x00\x12@\n\x04mute\x18\x0f \x01(\x0b\x32\x30.google.cloud.video.livestream.v1.Event.MuteTaskH\x00\x12\x44\n\x06unmute\x18\x10 \x01(\x0b\x32\x32.google.cloud.video.livestream.v1.Event.UnmuteTaskH\x00\x12\x13\n\x0b\x65xecute_now\x18\t \x01(\x08\x12\x32\n\x0e\x65xecution_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x41\n\x05state\x18\x0b \x01(\x0e\x32-.google.cloud.video.livestream.v1.Event.StateB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\x0c \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x1a$\n\x0fInputSwitchTask\x12\x11\n\tinput_key\x18\x01 \x01(\t\x1a:\n\x0b\x41\x64\x42reakTask\x12+\n\x08\x64uration\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x1am\n\tSlateTask\x12+\n\x08\x64uration\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x33\n\x05\x61sset\x18\x02 \x01(\tB$\xfa\x41!\n\x1flivestream.googleapis.com/Asset\x1a\x15\n\x13ReturnToProgramTask\x1a\x37\n\x08MuteTask\x12+\n\x08\x64uration\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x1a\x0c\n\nUnmuteTask\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"o\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\r\n\tSCHEDULED\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\x0b\n\x07PENDING\x10\x05\x12\x0b\n\x07STOPPED\x10\x06:o\xea\x41l\n\x1flivestream.googleapis.com/Event\x12Iprojects/{project}/locations/{location}/channels/{channel}/events/{event}B\x06\n\x04task\"\xed\x05\n\x05\x41sset\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x43\n\x06labels\x18\x04 \x03(\x0b\x32\x33.google.cloud.video.livestream.v1.Asset.LabelsEntry\x12\x43\n\x05video\x18\x05 \x01(\x0b\x32\x32.google.cloud.video.livestream.v1.Asset.VideoAssetH\x00\x12\x43\n\x05image\x18\x06 \x01(\x0b\x32\x32.google.cloud.video.livestream.v1.Asset.ImageAssetH\x00\x12\x0e\n\x06\x63rc32c\x18\x07 \x01(\t\x12\x41\n\x05state\x18\x08 \x01(\x0e\x32-.google.cloud.video.livestream.v1.Asset.StateB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\t \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x1a\x19\n\nVideoAsset\x12\x0b\n\x03uri\x18\x01 \x01(\t\x1a\x19\n\nImageAsset\x12\x0b\n\x03uri\x18\x01 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"Q\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\x12\t\n\x05\x45RROR\x10\x04:\\\xea\x41Y\n\x1flivestream.googleapis.com/Asset\x12\x36projects/{project}/locations/{location}/assets/{asset}B\n\n\x08resource\"\x9d\x08\n\nEncryption\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x65\n\x19secret_manager_key_source\x18\x07 \x01(\x0b\x32@.google.cloud.video.livestream.v1.Encryption.SecretManagerSourceH\x00\x12Q\n\x0b\x64rm_systems\x18\x03 \x01(\x0b\x32\x37.google.cloud.video.livestream.v1.Encryption.DrmSystemsB\x03\xe0\x41\x02\x12O\n\x06\x61\x65s128\x18\x04 \x01(\x0b\x32=.google.cloud.video.livestream.v1.Encryption.Aes128EncryptionH\x01\x12V\n\nsample_aes\x18\x05 \x01(\x0b\x32@.google.cloud.video.livestream.v1.Encryption.SampleAesEncryptionH\x01\x12V\n\tmpeg_cenc\x18\x06 \x01(\x0b\x32\x41.google.cloud.video.livestream.v1.Encryption.MpegCommonEncryptionH\x01\x1a\x61\n\x13SecretManagerSource\x12J\n\x0esecret_version\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*secretmanager.googleapis.com/SecretVersion\x1a\n\n\x08Widevine\x1a\n\n\x08\x46\x61irplay\x1a\x0b\n\tPlayready\x1a\n\n\x08\x43learkey\x1a\xb2\x02\n\nDrmSystems\x12G\n\x08widevine\x18\x01 \x01(\x0b\x32\x35.google.cloud.video.livestream.v1.Encryption.Widevine\x12G\n\x08\x66\x61irplay\x18\x02 \x01(\x0b\x32\x35.google.cloud.video.livestream.v1.Encryption.Fairplay\x12I\n\tplayready\x18\x03 \x01(\x0b\x32\x36.google.cloud.video.livestream.v1.Encryption.Playready\x12G\n\x08\x63learkey\x18\x04 \x01(\x0b\x32\x35.google.cloud.video.livestream.v1.Encryption.Clearkey\x1a\x12\n\x10\x41\x65s128Encryption\x1a\x15\n\x13SampleAesEncryption\x1a+\n\x14MpegCommonEncryption\x12\x13\n\x06scheme\x18\x01 \x01(\tB\x03\xe0\x41\x02\x42\x0f\n\rsecret_sourceB\x11\n\x0f\x65ncryption_mode\"\xea\x03\n\x04Pool\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x42\n\x06labels\x18\x04 \x03(\x0b\x32\x32.google.cloud.video.livestream.v1.Pool.LabelsEntry\x12L\n\x0enetwork_config\x18\x05 \x01(\x0b\x32\x34.google.cloud.video.livestream.v1.Pool.NetworkConfig\x1aL\n\rNetworkConfig\x12;\n\x0epeered_network\x18\x01 \x01(\tB#\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:Y\xea\x41V\n\x1elivestream.googleapis.com/Pool\x12\x34projects/{project}/locations/{location}/pools/{pool}B\xeb\x01\n$com.google.cloud.video.livestream.v1B\x0eResourcesProtoP\x01ZDcloud.google.com/go/video/livestream/apiv1/livestreampb;livestreampb\xaa\x02 Google.Cloud.Video.LiveStream.V1\xca\x02 Google\\Cloud\\Video\\LiveStream\\V1\xea\x02$Google::Cloud::Video::LiveStream::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.video.livestream.v1.PreprocessingConfig", "google/cloud/video/livestream/v1/outputs.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module Video
      module LiveStream
        module V1
          Input = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Input").msgclass
          Input::SecurityRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Input.SecurityRule").msgclass
          Input::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Input.Type").enummodule
          Input::Tier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Input.Tier").enummodule
          Channel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Channel").msgclass
          Channel::Output = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Channel.Output").msgclass
          Channel::StreamingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Channel.StreamingState").enummodule
          InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputConfig").msgclass
          InputConfig::InputSwitchMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputConfig.InputSwitchMode").enummodule
          LogConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.LogConfig").msgclass
          LogConfig::LogSeverity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.LogConfig.LogSeverity").enummodule
          InputStreamProperty = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputStreamProperty").msgclass
          VideoStreamProperty = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.VideoStreamProperty").msgclass
          VideoFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.VideoFormat").msgclass
          AudioStreamProperty = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.AudioStreamProperty").msgclass
          AudioFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.AudioFormat").msgclass
          InputAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputAttachment").msgclass
          InputAttachment::AutomaticFailover = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.InputAttachment.AutomaticFailover").msgclass
          Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event").msgclass
          Event::InputSwitchTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.InputSwitchTask").msgclass
          Event::AdBreakTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.AdBreakTask").msgclass
          Event::SlateTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.SlateTask").msgclass
          Event::ReturnToProgramTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.ReturnToProgramTask").msgclass
          Event::MuteTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.MuteTask").msgclass
          Event::UnmuteTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.UnmuteTask").msgclass
          Event::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Event.State").enummodule
          Asset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Asset").msgclass
          Asset::VideoAsset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Asset.VideoAsset").msgclass
          Asset::ImageAsset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Asset.ImageAsset").msgclass
          Asset::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Asset.State").enummodule
          Encryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption").msgclass
          Encryption::SecretManagerSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.SecretManagerSource").msgclass
          Encryption::Widevine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Widevine").msgclass
          Encryption::Fairplay = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Fairplay").msgclass
          Encryption::Playready = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Playready").msgclass
          Encryption::Clearkey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Clearkey").msgclass
          Encryption::DrmSystems = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.DrmSystems").msgclass
          Encryption::Aes128Encryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.Aes128Encryption").msgclass
          Encryption::SampleAesEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.SampleAesEncryption").msgclass
          Encryption::MpegCommonEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Encryption.MpegCommonEncryption").msgclass
          Pool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Pool").msgclass
          Pool::NetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.livestream.v1.Pool.NetworkConfig").msgclass
        end
      end
    end
  end
end
