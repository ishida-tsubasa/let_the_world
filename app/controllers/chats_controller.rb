class ChatsController < ApplicationController
  def index
    　@channel = Channel.find_by(id:params[:id])
     # @chat = Chat.(id: params[:id])
  end
end