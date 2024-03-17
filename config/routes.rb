# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#index'

  get '/ping', to: 'application#ping'

  devise_for :users, path: '', path_names: {
                                 sign_in: 'login',
                                 sign_out: 'logout',
                                 registration: 'signup'
                               },
                     controllers: {
                       sessions: 'users/sessions',
                       registrations: 'users/registrations'
                     }
end
