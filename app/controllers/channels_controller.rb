class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
    @channels = if params[:search_word].present?
               Channel.where('channel like ?', "%#{params[:search_word]}%")
             else
               Channel.all
             end
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)
    @channel.user = current_user
    if @channel.save
      flash[:notice] = "作成完了"
     redirect_to channels_path
    else
      render new_channel_path
    end
  end

  private

  def channel_params
    params.require(:channel).permit(:channel)
  end

end
