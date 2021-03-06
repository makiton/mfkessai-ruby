=begin
#MF KESSAI REST API

#MF KESSAI REST API

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module SwaggerClient

  class DestinationPayload
    # 住所1
    attr_accessor :address1

    # 住所2
    attr_accessor :address2

    # CCメールアドレス(4つまで)
    attr_accessor :cc_emails

    attr_accessor :customer

    # 顧客ID(登録済みの場合)
    attr_accessor :customer_id

    # 部署
    attr_accessor :department

    # メールアドレス
    attr_accessor :email

    # 担当者名
    attr_accessor :name

    # 担当者名カナ
    attr_accessor :name_kana

    # 都道府県
    attr_accessor :prefecture

    # 電話番号
    attr_accessor :tel

    # 役職
    attr_accessor :title

    # 郵便番号
    attr_accessor :zip_code

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'cc_emails' => :'cc_emails',
        :'customer' => :'customer',
        :'customer_id' => :'customer_id',
        :'department' => :'department',
        :'email' => :'email',
        :'name' => :'name',
        :'name_kana' => :'name_kana',
        :'prefecture' => :'prefecture',
        :'tel' => :'tel',
        :'title' => :'title',
        :'zip_code' => :'zip_code'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address1' => :'String',
        :'address2' => :'String',
        :'cc_emails' => :'Array<String>',
        :'customer' => :'CustomerPayload',
        :'customer_id' => :'String',
        :'department' => :'String',
        :'email' => :'String',
        :'name' => :'String',
        :'name_kana' => :'String',
        :'prefecture' => :'String',
        :'tel' => :'String',
        :'title' => :'String',
        :'zip_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'cc_emails')
        if (value = attributes[:'cc_emails']).is_a?(Array)
          self.cc_emails = value
        end
      end

      if attributes.has_key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.has_key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'name_kana')
        self.name_kana = attributes[:'name_kana']
      end

      if attributes.has_key?(:'prefecture')
        self.prefecture = attributes[:'prefecture']
      end

      if attributes.has_key?(:'tel')
        self.tel = attributes[:'tel']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'zip_code')
        self.zip_code = attributes[:'zip_code']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @address1.nil?
        invalid_properties.push("invalid value for 'address1', address1 cannot be nil.")
      end

      if @address1.to_s.length > 100
        invalid_properties.push("invalid value for 'address1', the character length must be smaller than or equal to 100.")
      end

      if @address1.to_s.length < 1
        invalid_properties.push("invalid value for 'address1', the character length must be great than or equal to 1.")
      end

      if !@address2.nil? && @address2.to_s.length > 100
        invalid_properties.push("invalid value for 'address2', the character length must be smaller than or equal to 100.")
      end

      if !@department.nil? && @department.to_s.length > 50
        invalid_properties.push("invalid value for 'department', the character length must be smaller than or equal to 50.")
      end

      if @email.nil?
        invalid_properties.push("invalid value for 'email', email cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 30
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 30.")
      end

      if @name.to_s.length < 1
        invalid_properties.push("invalid value for 'name', the character length must be great than or equal to 1.")
      end

      if !@name_kana.nil? && @name_kana.to_s.length > 60
        invalid_properties.push("invalid value for 'name_kana', the character length must be smaller than or equal to 60.")
      end

      if @prefecture.nil?
        invalid_properties.push("invalid value for 'prefecture', prefecture cannot be nil.")
      end

      if @tel.nil?
        invalid_properties.push("invalid value for 'tel', tel cannot be nil.")
      end

      if @tel !~ Regexp.new(/^0((\d{1,2}-?\d{1,4}|\d{3,4}-?\d{1,2})-?\d{4}|120-?\d{3}-?\d{3})$/)
        invalid_properties.push("invalid value for 'tel', must conform to the pattern /^0((\\d{1,2}-?\\d{1,4}|\\d{3,4}-?\\d{1,2})-?\\d{4}|120-?\\d{3}-?\\d{3})$/.")
      end

      if !@title.nil? && @title.to_s.length > 30
        invalid_properties.push("invalid value for 'title', the character length must be smaller than or equal to 30.")
      end

      if @zip_code.nil?
        invalid_properties.push("invalid value for 'zip_code', zip_code cannot be nil.")
      end

      if @zip_code !~ Regexp.new(/^\\d{3}-?\\d{4}$/)
        invalid_properties.push("invalid value for 'zip_code', must conform to the pattern /^\\d{3}-?\\d{4}$/.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @address1.nil?
      return false if @address1.to_s.length > 100
      return false if @address1.to_s.length < 1
      return false if !@address2.nil? && @address2.to_s.length > 100
      return false if !@department.nil? && @department.to_s.length > 50
      return false if @email.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 30
      return false if @name.to_s.length < 1
      return false if !@name_kana.nil? && @name_kana.to_s.length > 60
      return false if @prefecture.nil?
      prefecture_validator = EnumAttributeValidator.new('String', ["北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"])
      return false unless prefecture_validator.valid?(@prefecture)
      return false if @tel.nil?
      return false if @tel !~ Regexp.new(/^0((\d{1,2}-?\d{1,4}|\d{3,4}-?\d{1,2})-?\d{4}|120-?\d{3}-?\d{3})$/)
      return false if !@title.nil? && @title.to_s.length > 30
      return false if @zip_code.nil?
      return false if @zip_code !~ Regexp.new(/^\d{3}-?\d{4}$/)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      if address1.nil?
        fail ArgumentError, "address1 cannot be nil"
      end

      if address1.to_s.length > 100
        fail ArgumentError, "invalid value for 'address1', the character length must be smaller than or equal to 100."
      end

      if address1.to_s.length < 1
        fail ArgumentError, "invalid value for 'address1', the character length must be great than or equal to 1."
      end

      @address1 = address1
    end

    # Custom attribute writer method with validation
    # @param [Object] address2 Value to be assigned
    def address2=(address2)

      if !address2.nil? && address2.to_s.length > 100
        fail ArgumentError, "invalid value for 'address2', the character length must be smaller than or equal to 100."
      end

      @address2 = address2
    end

    # Custom attribute writer method with validation
    # @param [Object] department Value to be assigned
    def department=(department)

      if !department.nil? && department.to_s.length > 50
        fail ArgumentError, "invalid value for 'department', the character length must be smaller than or equal to 50."
      end

      @department = department
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 30
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 30."
      end

      if name.to_s.length < 1
        fail ArgumentError, "invalid value for 'name', the character length must be great than or equal to 1."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] name_kana Value to be assigned
    def name_kana=(name_kana)

      if !name_kana.nil? && name_kana.to_s.length > 60
        fail ArgumentError, "invalid value for 'name_kana', the character length must be smaller than or equal to 60."
      end

      @name_kana = name_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prefecture Object to be assigned
    def prefecture=(prefecture)
      validator = EnumAttributeValidator.new('String', ["北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"])
      unless validator.valid?(prefecture)
        fail ArgumentError, "invalid value for 'prefecture', must be one of #{validator.allowable_values}."
      end
      @prefecture = prefecture
    end

    # Custom attribute writer method with validation
    # @param [Object] tel Value to be assigned
    def tel=(tel)
      if tel.nil?
        fail ArgumentError, "tel cannot be nil"
      end

      if tel !~ Regexp.new(/^0((\d{1,2}-?\d{1,4}|\d{3,4}-?\d{1,2})-?\d{4}|120-?\d{3}-?\d{3})$/)
        fail ArgumentError, "invalid value for 'tel', must conform to the pattern /^0((\\d{1,2}-?\\d{1,4}|\\d{3,4}-?\\d{1,2})-?\\d{4}|120-?\\d{3}-?\\d{3})$/."
      end

      @tel = tel
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)

      if !title.nil? && title.to_s.length > 30
        fail ArgumentError, "invalid value for 'title', the character length must be smaller than or equal to 30."
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] zip_code Value to be assigned
    def zip_code=(zip_code)
      if zip_code.nil?
        fail ArgumentError, "zip_code cannot be nil"
      end

      if zip_code !~ Regexp.new(/^\d{3}-?\d{4}$/)
        fail ArgumentError, "invalid value for 'zip_code', must conform to the pattern /^\\d{3}-?\\d{4}$/."
      end

      @zip_code = zip_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          cc_emails == o.cc_emails &&
          customer == o.customer &&
          customer_id == o.customer_id &&
          department == o.department &&
          email == o.email &&
          name == o.name &&
          name_kana == o.name_kana &&
          prefecture == o.prefecture &&
          tel == o.tel &&
          title == o.title &&
          zip_code == o.zip_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address1, address2, cc_emails, customer, customer_id, department, email, name, name_kana, prefecture, tel, title, zip_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        value.compact.map{ |v| _to_hash(v) }
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
