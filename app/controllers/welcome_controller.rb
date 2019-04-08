class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def index_gu_laoshi
  end

  def index_baojiang
  end

  def index_fukuan    
  end

  def beijing_waijiao_paiqian
  end

  def beijing_waijiao_jianzhi_waijiao_paiqian
  end

  def beijing_waijiao_waidi_quanzhi_waijiao_paiqian
  end

  def beijing_waijiao_xuexiao_waijiao_faq
  end

  def geren_waijiao_fuwu_youshi
  end

  def geren_waijiao_fuwu_liucheng
  end

  def geren_waijiao_shoufei_qingkuang
  end

  def geren_waijiao_changjian_wenti
  end
  
  def zhujia_waijiao_fuwu_youshi
  end

  def zhujia_waijiao_fuwu_liucheng
  end

  def zhujia_waijiao_jiating_xuzhi
  end

  def zhujia_waijiao_changjian_wenti
  end

  def waiguo_lietou_fuwu_liucheng
  end

  def waiguo_lietou_shoufei_qingkuang
  end


  def register
    if request.post?
      params.permit!
      r = Register.new
      r.first_name = params[:first_name]
      r.last_name = params[:last_name]
      r.school_name = params[:school_name]
      r.email = params[:email]
      r.phone = params[:phone]
      r.skype_id = params[:skype_id]
      r.wechat_id = params[:wechat_id]
      r.school_website = params[:school_website]
      r.country_and_city = params[:country_and_city]
      r.teachers_size = params[:teachers_size]
      r.recruitment_needs = params[:recruitment_needs]
      r.question = params[:question]
      r.channel = params[:channel]
      r.save
    end
  end


end