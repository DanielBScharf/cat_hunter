class CatsController < ApplicationController
  def index
    @cats = Cats.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.user = current_user

    if @cat.save
      redirect_to cat_path(@cat)
    else
      render :new, status: :uprocessable_entity
    end
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])

    if @cat.update(cat_params)
      redirect_to cat_path(@cat)
    else
      render :edit, status: :uprocessable_entity
    end
  end
end
