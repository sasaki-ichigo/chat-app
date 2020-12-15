Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
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