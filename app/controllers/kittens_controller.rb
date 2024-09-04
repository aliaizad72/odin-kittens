class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end
  def show
    @kitten = Kitten.find_by(id: params[:id])
  end

  def new
    @kitten = Kitten.new
  end
  def create
    @kitten = Kitten.new(kittens_params)

    if @kitten.save
      redirect_to @kitten
    else
      render :new, status: 422
    end
  end

  private

  def kittens_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
