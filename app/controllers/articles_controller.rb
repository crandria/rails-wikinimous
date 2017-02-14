class ArticlesController < ApplicationController
  def index
    @articles = Airplane.all
  end

  def show
    @airplane = Airplane.find(params[:id])
  end

  def new
    @airplane = Airplane.new
  end

  def create
    @airplane = Airplane.new(airplane_params)
    @airplane.save
    redirect_to articles_path
  end

  def edit
    @airplane = Airplane.find(params[:id])
  end

  def update
    @airplane = Airplane.find(params[:id])
    @airplane.update(params[:airplane])
  end

  def destroy

    @airplane = Airplane.find(params[:id])
    @airplane.destroy
    redirect_to articles_path
  end

  private

  def airplane_params
    params.require(:airplane).permit(:name, :family, :seats)
  end

end
