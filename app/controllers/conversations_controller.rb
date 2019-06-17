class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @current_user = User.find(params[:current_user])
  end

  def create
    convo = Conversation.create!
    params[:participants].each do |user_id|
      ConversationsUser.create!(
        conversation: convo,
        user_id: user_id
      )
    end

    redirect_to convo
  end
end
