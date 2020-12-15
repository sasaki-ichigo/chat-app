class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
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