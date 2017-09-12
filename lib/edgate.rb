
class EdGate

  attr_reader :api_key, :connection

  def initialize public_api_key = ENV['ED_GATE_PUBLIC_API_KEY']
    @api_key = public_api_key
    @connection = Connection.new(@api_key)
  end
end

EdGate.new(api_key)