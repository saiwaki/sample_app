class MainController < ApplicationController
  def index
    @contents = Main.all
  end

  def show
    logger.debug params
    @content = Main.find(params[:id])
  end

  def new
    @main = Main.new
  end

  def create
    logger.debug params
    @content = Main.new(main_params)
    if @content.save
      redirect_to "/main/show/#{@content.id}"
    else
      render :new
    end
  end

  def edit
    @main = Main.find(params[:id])
  end

  def update
    @main = Main.find(params[:id])
    logger.debug params
    if @main.update(main_params)
      redirect_to "/main/show/#{@main.id}"
    else
      render :edit
    end
  end

  def destroy
    @main = Main.find(params[:id])
    @main.destroy

    redirect_to main_index_path
  end

  private

  def main_params
    params.require(:main).permit(:content)
  end
end
