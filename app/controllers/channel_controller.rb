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
      flash[:notice] = "作成完了"
     redirect_to("/channel")
    else
      render("channel/new")
    end
  end

end
