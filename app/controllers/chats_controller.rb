# frozen_string_literal: true

class ChatsController < ApplicationController
  def index
    @channel = Channel.find(params[:channel_id])
    @chats = if params[:search_word].present?
               @channel.chats.includes(:user)
                       .where('content like ?', "%#{params[:search_word]}%")
                       .paginate(page: params[:page], per_page: 10)
             else
               @channel.chats.includes(:user)
                       .paginate(page: params[:page], per_page: 10)
             end
    @chat = Chat.new
  end

  def create
    @channel = Channel.find(params[:channel_id])
    @chat = Chat.new(chat_params)
    @chat.user = current_user
    @chat.channel = @channel
    @chat.save!
    flash[:notice] = '作成完了'
    redirect_to channel_chats_path(@chat.channel_id)
  end

  def destroy
    chat = current_user.chats.find(params[:id])
    chat.destroy
    flash[:notice] = "削除されました"
    redirect_to channel_chats_path(chat.channel_id)
  end

  def edit
    @channel = Channel.find_by(id: params[:channel_id])
    @chat = Chat.find_by(id: params[:id])
  end

  def update
    @channel = Channel.find(params[:channel_id])
    @chat = Chat.find(params[:id])
    @chat.assign_attributes(chat_params)
    @chat.save!
    flash[:notice] = '更新完了'
    redirect_to channel_chats_path(@chat.channel_id)
  end

  private

  def chat_params
    params.require(:chat).permit(:content, :image)
  end

end
