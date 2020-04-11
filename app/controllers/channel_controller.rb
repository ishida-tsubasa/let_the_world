class ChannelController < ApplicationController
  def index
    @channels = Channel.all
  end
end
