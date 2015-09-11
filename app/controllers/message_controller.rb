class MessageController < ApplicationController
  def index
    @message=Message.all
  end
  
  def create
    @message=Massage.new(massage_params)
    @message.save
    redirect_to root_path , notice:'メッセージを保存しました'
  end
  
  privete
  def message_params
    params.require(:message).permit(:name,:body)
  end
    
end
