class PresentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @presents = Present.all
  end

  def show
    @present = Present.find(params[:id])
  end

  def new
    @present = Present.new
  end

  def edit
    @present = Present.find(params[:id])
  end

  def create
    @present = Present.new(present_params)

    if @present.save
      redirect_to @present
    else
      render 'new'
    end
  end

  def update
    @present = Present.find(params[:id])

    if @present.update(present_params)
      redirect_to @present
    else
      render 'edit'
    end
  end

  def destroy
    @present = Present.find(params[:id])
    @present.destroy

    redirect_to presents_path
  end

  private
  def present_params
    params.require(:present).permit(:title, :body)
  end

end

