=begin
#MF KESSAI API v2

#MF KESSAI REST API

The version of the OpenAPI document: 0.2.0
Contact: support@mfkessai.co.jp
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  class TaxRateType
    NON_TAXABLE = "non_taxable".freeze
    N8 = "8".freeze
    N10 = "10".freeze
    REDUCED_8 = "reduced_8".freeze
    TRANSITIONAL_MEASURES_8 = "transitional_measures_8".freeze
    INAPPLICABLE = "inapplicable".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TaxRateType.constants.select { |c| TaxRateType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TaxRateType" if constantValues.empty?
      value
    end
  end
end