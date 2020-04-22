class ChatsController < ApplicationController
   def show
    　@channels = Channel.find_by(id:params[:id])
    　@chats = Chat.where(channel_id: @channel.id)
   end
end