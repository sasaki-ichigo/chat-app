class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user)
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end



# コントローラー
# 7つのアクション
# index	モデル(テーブル)のデータ群の一覧を表示する
# new	モデル(テーブル)のデータ群を新規作成する
# create	モデル(テーブル)のデータ群を新規作成して追加(保存)する
# edit	モデル(テーブル)のデータ群を更新するためのフォームを作成する
# show	レコードの内容を表示する
# update	モデル(テーブル)のデータ群を更新する
# destroy	モデル(テーブル)のデータ群を削除する