class RoomsController < ApplicationController

  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
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