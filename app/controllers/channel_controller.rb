class ChannelController < ApplicationController
  def index
    @channels = Channel.all
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel: params[:channel])
    if @channel.save
     redirect_to("/channel/index")
    else
      render("channel/new")
    end
  end

end
