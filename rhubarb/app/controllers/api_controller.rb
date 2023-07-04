class ApiController < ActionController::Base
  def index
    @call = params[:call]
  end
end
