class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
  # if @comment.commentable_type == "Book"
  #   redirect_to book_path(@comment.commentable_id)
  # else
  #   redirect_to article_path(@comment.commentable_id)
  # end

  respond_to do |format|
    if @comment.save
      format.html { redirect_to comment_url(@comment), notice: "Comment was successfully created." }
      format.json { render :show, status: :created, location: @comment }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @comment.errors, status: :unprocessable_entity }
    end
  end

end

private
def comment_params
    params.permit(:name , :commentable_id , :commentable_type)
end

end