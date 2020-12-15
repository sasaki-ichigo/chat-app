class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
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