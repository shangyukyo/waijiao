Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  resources :welcome do 
    collection do
      get :beijing_waijiao_paiqian
      get :beijing_waijiao_jianzhi_waijiao_paiqian
      get :beijing_waijiao_waidi_quanzhi_waijiao_paiqian
      get :beijing_waijiao_xuexiao_waijiao_faq
      get :geren_waijiao_fuwu_liucheng
      get :geren_waijiao_fuwu_youshi
      get :geren_waijiao_shoufei_qingkuang
      get :geren_waijiao_changjian_wenti

      get :zhujia_waijiao_fuwu_youshi
      get :zhujia_waijiao_fuwu_liucheng
      get :zhujia_waijiao_jiating_xuzhi
      get :zhujia_waijiao_changjian_wenti

      get :waiguo_lietou_fuwu_liucheng
      get :waiguo_lietou_shoufei_qingkuang
      get :contact_us
    end
  end
end
