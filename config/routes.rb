Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  resources :welcome do 
    collection do
      get :beijing_waijiao_paiqian
      get :beijing_waijiao_jianzhi_waijiao_paiqian
      get :beijing_waijiao_waidi_quanzhi_waijiao_paiqian
      get :beijing_waijiao_xuexiao_waijiao_faq
    end
  end
end
