class ChatsController < ApplicationController

    def show
      @channel = Channel.find_by(id:params[:id])
    #   @chats = Chat.where(channel_id: @channel.id) 左記のコードを下記に変更
        @chats = @channel.chats.includes(:user).page(params[:page]).per(3)

        @chat = Chat.new
    end

    # def create
    #   @chat = Chat.new(chat_params(params))
    #   @chat.user = current_user
    #   @chat.save!
    #   flash[:notice] = "作成完了"
    #   redirect_to chat_path(@chat.channel_id)
    # end

    # private

    # def chat_params(params)
    #   params.require(:chat).permit(:content, :channel_id)
    # end

     def create
        @chat = Chat.new(chat_params(params))
        @chat.user = current_user
        @chat.save!
        flash[:notice] = "作成完了"
        redirect_to chat_path(@chat.channel_id)
     end

    private

    def chat_params(params)
      params.require(:chat).permit(:content, :channel_id, :image)
    end
end