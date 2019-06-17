class MessagesController < ApplicationController
  def create
    Message.create!(
      author_id: params[:author_id],
      conversation_id: params[:conversation_id],
      content: params[:content]
    )

    redirect_to conversation_path(id: params[:conversation_id], current_user: params[:author_id])
  end
end
