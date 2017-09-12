
class Standard < Base

  #/standards/list/{set_id}
  def index set_id
    response = http.get("/standards/list/#{set_id}")
  end

  def initialize parameters
    super
  end

  def standard_params

  end
end