class ChatsController < ApplicationController
    def show
      @channel = Channel.find_by(id:params[:id])
    #   @chats = Chat.where(channel_id: @channel.id) 左記のコードを下記に変更
      @chats = @channel.chats.includes(:user)
    end
end
