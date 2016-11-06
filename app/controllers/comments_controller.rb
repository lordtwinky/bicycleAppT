class CommentsController < ApplicationController
	before_action :authorise
def create
	@bicycle = Bicycle.find params[:bicycle_id]
	@comment = @bicycle.comments.new(comment_params)
	@comment.customer_id = @current_customer.id
	@comment.save
	
	respond_to do |format|
		format.html { redirect_to @bicycle}
	end
end

private 
def comment_params
	params.require(:comment).permit(:content, :bicycle_id, :customer_id, :stars)
end
end