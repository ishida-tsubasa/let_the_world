class ChatsController < ApplicationController
    def show
      @channel = Channel.find_by(id:params[:id])
      @chats.channel = @channel
        #   @user = User.where(user_id: @chats.user_id)
        # @channel = Channel.find_by(id:params[:id])
        #   @chats = Chat.where(channel_id: @channel.id)
    end
end
