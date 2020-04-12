class ChatsController < ApplicationController
  def show
    @chat = Channel.find_by(id:params[:id])
  end
end
