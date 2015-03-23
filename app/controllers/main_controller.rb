class MainController < ApplicationController
  def index
  end

  def show
    
  end

  def new
    
  end

  def create
    logger.debug params
    render plain: params[:main].inspect
  end

  private

  def main_params
    params.require(:main).permit(:content)
  end
end
