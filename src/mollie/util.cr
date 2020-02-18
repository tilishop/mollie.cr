struct Mollie
  module Util
    def self.version_string
      mollie = Mollie::VERSION
      crystal = Crystal::VERSION
      openssl = LibSSL::OPENSSL_VERSION
      "Mollie/#{mollie} Crystal/#{crystal} OpenSSL/#{openssl}"
    end

    def self.extract_url(links : Hash, type : String)
      links.dig?(type, "href")
    end

    def self.extract_id(links : Hash, type : String)
      href = extract_url(links, type)
      return if href.nil?
      File.basename(URI.parse(href).path)
    end

    def self.camelize_keys(hash : Hash)
      hash.transform_keys { |key| Wordsmith::Inflector.camelize(key, false) }
    end

    def self.nested_underscored_keys(json : JSON::Any)
      hash.transform_keys { |key| Wordsmith::Inflector.underscore(key) }
    end

    def self.nested_underscored_keys(hash : Hash)
      hash.transform_keys { |key| Wordsmith::Inflector.underscore(key) }
    end

    def self.nested_underscored_keys(array : Array)
      array.map { |item| self.nested_underscored_keys(item) }
    end

    def self.nested_underscored_keys(value : Number | Bool | String?)
      value
    end

    def self.build_nested_query(
      value : Hash(Symbol | String, String | Array(String)),
      prefix : String? = nil
    )
      value.map do |k, v|
        escaped = prefix ? "#{prefix}[#{self.escape(k)}]" : self.escape(k)
        self.build_nested_query(v, escaped)
      end.reject(&.empty?).join("&")
    end

    def self.build_nested_query(value : Array(String), prefix : String? = nil)
      value.map { |v| self.build_nested_query(v, "#{prefix}[]") }.join("&")
    end

    def self.build_nested_query(value : String, prefix : String)
      "#{prefix}=#{self.escape(value)}"
    end

    def self.build_nested_query(value : Nil, prefix : String? = nil)
      prefix
    end

    private def self.escape(value : Symbol | String)
      URI.encode_www_form(value.to_s)
    end
  end
end
