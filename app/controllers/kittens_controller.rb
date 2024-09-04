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
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      flash[:notice] = "You have created #{@kitten.name}"
      redirect_to @kitten
    else
      render :new, status: 422
    end
  end

  def edit
    @kitten = Kitten.find_by(id: params[:id])
  end

  def update
    @kitten = Kitten.find_by(id: params[:id])

    if @kitten.update(kitten_params)
      flash[:notice] = "You have edited #{@kitten.name}"
      redirect_to @kitten
    else
      render :edit, status: 422
    end
  end

  def destroy
    @kitten = Kitten.find_by(id: params[:id])
    flash[:notice] = "You have deleted #{@kitten.name}"
    @kitten.destroy

    redirect_to root_path, status: 303
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
