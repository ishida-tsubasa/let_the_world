class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params(params))
    @channel.user = current_user
    if @channel.save
      flash[:notice] = "作成完了"
     redirect_to channels_path
    else
      render 'new'
    end
  end
  
  private
  
  def channel_params(params)
    params.require(:channel).permit(:channel)
  end

end
