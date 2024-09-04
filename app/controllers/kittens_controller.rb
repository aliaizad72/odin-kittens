class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end
  def show
    @kitten = Kitten.find_by(id: params[:id])
  end
end
