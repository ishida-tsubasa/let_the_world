class ChatsController < ApplicationController
   def show
    　@channels = Channel.find_by(id:params[:id])
     # @chat = Chat.(id: params[:id])
   end
end