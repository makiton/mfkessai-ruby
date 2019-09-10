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
  # 振込から控除される金額とその内訳です。
  class Deduction
    # 債権合計額から控除される合計金額です。
    attr_accessor :amount

    # 売り手様へのの振込後に発生したキャンセルに伴う返金額です。
    attr_accessor :returned_credit_amount

    attr_accessor :tax

    attr_accessor :taxable

    attr_accessor :tax_free

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'returned_credit_amount' => :'returned_credit_amount',
        :'tax' => :'tax',
        :'taxable' => :'taxable',
        :'tax_free' => :'tax_free'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Integer',
        :'returned_credit_amount' => :'Integer',
        :'tax' => :'DeductionTax',
        :'taxable' => :'DeductionTaxable',
        :'tax_free' => :'DeductionTaxFree'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Deduction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Deduction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'returned_credit_amount')
        self.returned_credit_amount = attributes[:'returned_credit_amount']
      end

      if attributes.key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.key?(:'tax_free')
        self.tax_free = attributes[:'tax_free']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@amount.nil? && @amount > 2147483647
        invalid_properties.push('invalid value for "amount", must be smaller than or equal to 2147483647.')
      end

      if !@amount.nil? && @amount < 0
        invalid_properties.push('invalid value for "amount", must be greater than or equal to 0.')
      end

      if !@returned_credit_amount.nil? && @returned_credit_amount > 2147483647
        invalid_properties.push('invalid value for "returned_credit_amount", must be smaller than or equal to 2147483647.')
      end

      if !@returned_credit_amount.nil? && @returned_credit_amount < 0
        invalid_properties.push('invalid value for "returned_credit_amount", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@amount.nil? && @amount > 2147483647
      return false if !@amount.nil? && @amount < 0
      return false if !@returned_credit_amount.nil? && @returned_credit_amount > 2147483647
      return false if !@returned_credit_amount.nil? && @returned_credit_amount < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if !amount.nil? && amount > 2147483647
        fail ArgumentError, 'invalid value for "amount", must be smaller than or equal to 2147483647.'
      end

      if !amount.nil? && amount < 0
        fail ArgumentError, 'invalid value for "amount", must be greater than or equal to 0.'
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] returned_credit_amount Value to be assigned
    def returned_credit_amount=(returned_credit_amount)
      if !returned_credit_amount.nil? && returned_credit_amount > 2147483647
        fail ArgumentError, 'invalid value for "returned_credit_amount", must be smaller than or equal to 2147483647.'
      end

      if !returned_credit_amount.nil? && returned_credit_amount < 0
        fail ArgumentError, 'invalid value for "returned_credit_amount", must be greater than or equal to 0.'
      end

      @returned_credit_amount = returned_credit_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          returned_credit_amount == o.returned_credit_amount &&
          tax == o.tax &&
          taxable == o.taxable &&
          tax_free == o.tax_free
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, returned_credit_amount, tax, taxable, tax_free].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        OpenapiClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
