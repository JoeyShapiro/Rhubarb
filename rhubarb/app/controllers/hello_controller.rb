class HelloController < ActionController::Base
  def index
    @call = params[:call]
  end
end
