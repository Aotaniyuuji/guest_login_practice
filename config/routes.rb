Rails.application.routes.draw do
  devise_for :users

  root :to => "homes#top"
  # 以下を追加
  devise_scope :users do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
