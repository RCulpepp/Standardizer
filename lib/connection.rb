
class Connection
  def initialize api_key
    @api_key = api_key
  end

  def call(uri, params)
    Faraday.new("http://api.edgate.com/#{uri}/#{base_params}")
  end

  def to_param hash
    string = ''
    hash.each do |key, value|
      string = string + "#{key}=#{value}&"
    end
    string
  end

  def base_params
    "?publicKey=#{@api_key}×tamp=#{Time.new.to_i}&"
  end
end