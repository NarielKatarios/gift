class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  # def index
  #   @present = Present.find(params[:present_id])

  #   @comment = @present.comments.all
  # end
  #
  # def show
  #   @present = Present.find(params[:present_id])
  #   @comment = @present.comments.find(params[:id])
  # end
  #
  # def new
  #   @present = Present.find(params[:present_id])
  #   @comment = @present.comments.new
  # end
  #
  # def edit
  #   @present = Present.find(params[:present_id])
  #   @comment = @present.comments.find(params[:id])
  # end
  #
  def create
    @present = Present.find(params[:present_id])
    @comment = @present.comments.create(comment_params)
    redirect_to present_path(@present)

    # if @comment.save
    #   redirect_to @present
    # else
    #   render 'new'
    # end
  end

  # def update
  #   @comment = Comment.find(params[:id])
  #
  #   if @comment.update(comment_params)
  #     redirect_to @present
  #   else
  #     render 'edit'
  #   end
  # end

  def destroy
    @present = Present.find(params[:present_id])
    @comment = @present.comments.find(params[:id])
    @comment.destroy

    redirect_to present_path(@present)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end


