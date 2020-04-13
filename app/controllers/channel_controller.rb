class ChannelController < ApplicationController
  def index
    @channels = Channel.all
  end

  def new
  end

  def create
    channel = Channel.new(channel: params[:channel])
    channel.save
    redirect_to("/channel/index")
  end

end
