
require 'faraday'

class Base
  def initialize
    @connection = EdGate.conection
  end

  def search params

  end

  def http uri, params
    connection.call(uri, params)
  end
end
