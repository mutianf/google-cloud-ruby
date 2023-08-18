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
    module Language
      module V2
        # Represents the input to API methods.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Language::V2::Document::Type]
        #     Required. If the type is not set or is `TYPE_UNSPECIFIED`,
        #     returns an `INVALID_ARGUMENT` error.
        # @!attribute [rw] content
        #   @return [::String]
        #     The content of the input in string format.
        #     Cloud audit logging exempt since it is based on user data.
        # @!attribute [rw] gcs_content_uri
        #   @return [::String]
        #     The Google Cloud Storage URI where the file content is located.
        #     This URI must be of the form: gs://bucket_name/object_name. For more
        #     details, see https://cloud.google.com/storage/docs/reference-uris.
        #     NOTE: Cloud Storage object versioning is not supported.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language of the document (if not specified, the language is
        #     automatically detected). Both ISO and BCP-47 language codes are
        #     accepted.<br>
        #     [Language
        #     Support](https://cloud.google.com/natural-language/docs/languages) lists
        #     currently supported languages for each API method. If the language (either
        #     specified by the caller or automatically detected) is not supported by the
        #     called API method, an `INVALID_ARGUMENT` error is returned.
        class Document
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The document types enum.
          module Type
            # The content type is not specified.
            TYPE_UNSPECIFIED = 0

            # Plain text
            PLAIN_TEXT = 1

            # HTML
            HTML = 2
          end
        end

        # Represents a sentence in the input document.
        # @!attribute [rw] text
        #   @return [::Google::Cloud::Language::V2::TextSpan]
        #     The sentence text.
        # @!attribute [rw] sentiment
        #   @return [::Google::Cloud::Language::V2::Sentiment]
        #     For calls to [AnalyzeSentiment][] or if
        #     {::Google::Cloud::Language::V2::AnnotateTextRequest::Features#extract_document_sentiment AnnotateTextRequest.Features.extract_document_sentiment}
        #     is set to true, this field will contain the sentiment for the sentence.
        class Sentence
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a phrase in the text that is a known entity, such as
        # a person, an organization, or location. The API associates information, such
        # as probability and mentions, with entities.
        # @!attribute [rw] name
        #   @return [::String]
        #     The representative name for the entity.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Language::V2::Entity::Type]
        #     The entity type.
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Metadata associated with the entity.
        #
        #     For most entity types, the metadata is a Wikipedia URL (`wikipedia_url`)
        #     and Knowledge Graph MID (`mid`), if they are available. For the metadata
        #     associated with other entity types, see the Type table below.
        # @!attribute [rw] mentions
        #   @return [::Array<::Google::Cloud::Language::V2::EntityMention>]
        #     The mentions of this entity in the input document. The API currently
        #     supports proper noun mentions.
        # @!attribute [rw] sentiment
        #   @return [::Google::Cloud::Language::V2::Sentiment]
        #     For calls to [AnalyzeEntitySentiment][] or if
        #     [AnnotateTextRequest.Features.extract_entity_sentiment][google.cloud.language.v2.AnnotateTextRequest.Features.extract_entity_sentiment]
        #     is set to true, this field will contain the aggregate sentiment expressed
        #     for this entity in the provided document.
        class Entity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The type of the entity. For most entity types, the associated metadata is a
          # Wikipedia URL (`wikipedia_url`) and Knowledge Graph MID (`mid`). The table
          # below lists the associated fields for entities that have different
          # metadata.
          module Type
            # Unknown
            UNKNOWN = 0

            # Person
            PERSON = 1

            # Location
            LOCATION = 2

            # Organization
            ORGANIZATION = 3

            # Event
            EVENT = 4

            # Artwork
            WORK_OF_ART = 5

            # Consumer product
            CONSUMER_GOOD = 6

            # Other types of entities
            OTHER = 7

            # Phone number
            #
            # The metadata lists the phone number, formatted according to local
            # convention, plus whichever additional elements appear in the text:
            #
            # * `number` - the actual number, broken down into sections as per local
            # convention
            # * `national_prefix` - country code, if detected
            # * `area_code` - region or area code, if detected
            # * `extension` - phone extension (to be dialed after connection), if
            # detected
            PHONE_NUMBER = 9

            # Address
            #
            # The metadata identifies the street number and locality plus whichever
            # additional elements appear in the text:
            #
            # * `street_number` - street number
            # * `locality` - city or town
            # * `street_name` - street/route name, if detected
            # * `postal_code` - postal code, if detected
            # * `country` - country, if detected<
            # * `broad_region` - administrative area, such as the state, if detected
            # * `narrow_region` - smaller administrative area, such as county, if
            # detected
            # * `sublocality` - used in Asian addresses to demark a district within a
            # city, if detected
            ADDRESS = 10

            # Date
            #
            # The metadata identifies the components of the date:
            #
            # * `year` - four digit year, if detected
            # * `month` - two digit month number, if detected
            # * `day` - two digit day number, if detected
            DATE = 11

            # Number
            #
            # The metadata is the number itself.
            NUMBER = 12

            # Price
            #
            # The metadata identifies the `value` and `currency`.
            PRICE = 13
          end
        end

        # Represents the feeling associated with the entire text or entities in
        # the text.
        # @!attribute [rw] magnitude
        #   @return [::Float]
        #     A non-negative number in the [0, +inf) range, which represents
        #     the absolute magnitude of sentiment regardless of score (positive or
        #     negative).
        # @!attribute [rw] score
        #   @return [::Float]
        #     Sentiment score between -1.0 (negative sentiment) and 1.0
        #     (positive sentiment).
        class Sentiment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a mention for an entity in the text. Currently, proper noun
        # mentions are supported.
        # @!attribute [rw] text
        #   @return [::Google::Cloud::Language::V2::TextSpan]
        #     The mention text.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Language::V2::EntityMention::Type]
        #     The type of the entity mention.
        # @!attribute [rw] sentiment
        #   @return [::Google::Cloud::Language::V2::Sentiment]
        #     For calls to [AnalyzeEntitySentiment][] or if
        #     [AnnotateTextRequest.Features.extract_entity_sentiment][google.cloud.language.v2.AnnotateTextRequest.Features.extract_entity_sentiment]
        #     is set to true, this field will contain the sentiment expressed for this
        #     mention of the entity in the provided document.
        # @!attribute [rw] probability
        #   @return [::Float]
        #     Probability score associated with the entity.
        #
        #     The score shows the probability of the entity mention being the entity
        #     type. The score is in (0, 1] range.
        class EntityMention
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The supported types of mentions.
          module Type
            # Unknown
            TYPE_UNKNOWN = 0

            # Proper name
            PROPER = 1

            # Common noun (or noun compound)
            COMMON = 2
          end
        end

        # Represents a text span in the input document.
        # @!attribute [rw] content
        #   @return [::String]
        #     The content of the text span, which is a substring of the document.
        # @!attribute [rw] begin_offset
        #   @return [::Integer]
        #     The API calculates the beginning offset of the content in the original
        #     document according to the
        #     {::Google::Cloud::Language::V2::EncodingType EncodingType} specified in the API
        #     request.
        class TextSpan
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a category returned from the text classifier.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the category representing the document.
        # @!attribute [rw] confidence
        #   @return [::Float]
        #     The classifier's confidence of the category. Number represents how certain
        #     the classifier is that this category represents the given text.
        class ClassificationCategory
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The sentiment analysis request message.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::Language::V2::Document]
        #     Required. Input document.
        # @!attribute [rw] encoding_type
        #   @return [::Google::Cloud::Language::V2::EncodingType]
        #     The encoding type used by the API to calculate sentence offsets.
        class AnalyzeSentimentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The sentiment analysis response message.
        # @!attribute [rw] document_sentiment
        #   @return [::Google::Cloud::Language::V2::Sentiment]
        #     The overall sentiment of the input document.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     The language of the text, which will be the same as the language specified
        #     in the request or, if not specified, the automatically-detected language.
        #     See [Document.language][] field for more details.
        # @!attribute [rw] sentences
        #   @return [::Array<::Google::Cloud::Language::V2::Sentence>]
        #     The sentiment for all the sentences in the document.
        # @!attribute [rw] language_supported
        #   @return [::Boolean]
        #     Whether the language is officially supported. The API may still return a
        #     response when the language is not supported, but it is on a best effort
        #     basis.
        class AnalyzeSentimentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The entity analysis request message.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::Language::V2::Document]
        #     Required. Input document.
        # @!attribute [rw] encoding_type
        #   @return [::Google::Cloud::Language::V2::EncodingType]
        #     The encoding type used by the API to calculate offsets.
        class AnalyzeEntitiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The entity analysis response message.
        # @!attribute [rw] entities
        #   @return [::Array<::Google::Cloud::Language::V2::Entity>]
        #     The recognized entities in the input document.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     The language of the text, which will be the same as the language specified
        #     in the request or, if not specified, the automatically-detected language.
        #     See [Document.language][] field for more details.
        # @!attribute [rw] language_supported
        #   @return [::Boolean]
        #     Whether the language is officially supported. The API may still return a
        #     response when the language is not supported, but it is on a best effort
        #     basis.
        class AnalyzeEntitiesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The document classification request message.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::Language::V2::Document]
        #     Required. Input document.
        class ClassifyTextRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The document classification response message.
        # @!attribute [rw] categories
        #   @return [::Array<::Google::Cloud::Language::V2::ClassificationCategory>]
        #     Categories representing the input document.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     The language of the text, which will be the same as the language specified
        #     in the request or, if not specified, the automatically-detected language.
        #     See [Document.language][] field for more details.
        # @!attribute [rw] language_supported
        #   @return [::Boolean]
        #     Whether the language is officially supported. The API may still return a
        #     response when the language is not supported, but it is on a best effort
        #     basis.
        class ClassifyTextResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The document moderation request message.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::Language::V2::Document]
        #     Required. Input document.
        class ModerateTextRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The document moderation response message.
        # @!attribute [rw] moderation_categories
        #   @return [::Array<::Google::Cloud::Language::V2::ClassificationCategory>]
        #     Harmful and sensitive categories representing the input document.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     The language of the text, which will be the same as the language specified
        #     in the request or, if not specified, the automatically-detected language.
        #     See [Document.language][] field for more details.
        # @!attribute [rw] language_supported
        #   @return [::Boolean]
        #     Whether the language is officially supported. The API may still return a
        #     response when the language is not supported, but it is on a best effort
        #     basis.
        class ModerateTextResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the text annotation API, which can perform multiple
        # analysis types in one call.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::Language::V2::Document]
        #     Required. Input document.
        # @!attribute [rw] features
        #   @return [::Google::Cloud::Language::V2::AnnotateTextRequest::Features]
        #     Required. The enabled features.
        # @!attribute [rw] encoding_type
        #   @return [::Google::Cloud::Language::V2::EncodingType]
        #     The encoding type used by the API to calculate offsets.
        class AnnotateTextRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # All available features.
          # Setting each one to true will enable that specific analysis for the input.
          # @!attribute [rw] extract_entities
          #   @return [::Boolean]
          #     Optional. Extract entities.
          # @!attribute [rw] extract_document_sentiment
          #   @return [::Boolean]
          #     Optional. Extract document-level sentiment.
          # @!attribute [rw] classify_text
          #   @return [::Boolean]
          #     Optional. Classify the full document into categories.
          # @!attribute [rw] moderate_text
          #   @return [::Boolean]
          #     Optional. Moderate the document for harmful and sensitive categories.
          class Features
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The text annotations response message.
        # @!attribute [rw] sentences
        #   @return [::Array<::Google::Cloud::Language::V2::Sentence>]
        #     Sentences in the input document. Populated if the user enables
        #     {::Google::Cloud::Language::V2::AnnotateTextRequest::Features#extract_document_sentiment AnnotateTextRequest.Features.extract_document_sentiment}.
        # @!attribute [rw] entities
        #   @return [::Array<::Google::Cloud::Language::V2::Entity>]
        #     Entities, along with their semantic information, in the input document.
        #     Populated if the user enables
        #     {::Google::Cloud::Language::V2::AnnotateTextRequest::Features#extract_entities AnnotateTextRequest.Features.extract_entities}
        #     or
        #     [AnnotateTextRequest.Features.extract_entity_sentiment][google.cloud.language.v2.AnnotateTextRequest.Features.extract_entity_sentiment].
        # @!attribute [rw] document_sentiment
        #   @return [::Google::Cloud::Language::V2::Sentiment]
        #     The overall sentiment for the document. Populated if the user enables
        #     {::Google::Cloud::Language::V2::AnnotateTextRequest::Features#extract_document_sentiment AnnotateTextRequest.Features.extract_document_sentiment}.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     The language of the text, which will be the same as the language specified
        #     in the request or, if not specified, the automatically-detected language.
        #     See [Document.language][] field for more details.
        # @!attribute [rw] categories
        #   @return [::Array<::Google::Cloud::Language::V2::ClassificationCategory>]
        #     Categories identified in the input document.
        # @!attribute [rw] moderation_categories
        #   @return [::Array<::Google::Cloud::Language::V2::ClassificationCategory>]
        #     Harmful and sensitive categories identified in the input document.
        # @!attribute [rw] language_supported
        #   @return [::Boolean]
        #     Whether the language is officially supported by all requested features.
        #     The API may still return a response when the language is not supported, but
        #     it is on a best effort basis.
        class AnnotateTextResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the text encoding that the caller uses to process the output.
        # Providing an `EncodingType` is recommended because the API provides the
        # beginning offsets for various outputs, such as tokens and mentions, and
        # languages that natively use different text encodings may access offsets
        # differently.
        module EncodingType
          # If `EncodingType` is not specified, encoding-dependent information (such as
          # `begin_offset`) will be set at `-1`.
          NONE = 0

          # Encoding-dependent information (such as `begin_offset`) is calculated based
          # on the UTF-8 encoding of the input. C++ and Go are examples of languages
          # that use this encoding natively.
          UTF8 = 1

          # Encoding-dependent information (such as `begin_offset`) is calculated based
          # on the UTF-16 encoding of the input. Java and JavaScript are examples of
          # languages that use this encoding natively.
          UTF16 = 2

          # Encoding-dependent information (such as `begin_offset`) is calculated based
          # on the UTF-32 encoding of the input. Python is an example of a language
          # that uses this encoding natively.
          UTF32 = 3
        end
      end
    end
  end
end
