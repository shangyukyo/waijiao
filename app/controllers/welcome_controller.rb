class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @title = '关于我们'
  end

  def index_gu_laoshi
    @title = '雇一位老师'
  end

  def index_baojiang
    @title = '推荐和评论'
  end

  def index_fukuan  
    @title = '如何付款'  
  end

  def beijing_waijiao_paiqian
    @title = '学校外教-北京全职外教派遣'
  end

  def beijing_waijiao_jianzhi_waijiao_paiqian
    @title = '学校外教-北京兼职外教派遣'
  end

  def beijing_waijiao_waidi_quanzhi_waijiao_paiqian
    @title = '学校外教-外地全职外教派遣'
  end

  def beijing_waijiao_xuexiao_waijiao_faq
    @title = '学校外教-常见问题'
  end

  def geren_waijiao_fuwu_youshi
    @title = '个人外教-服务优势'
  end

  def geren_waijiao_fuwu_liucheng
    @title = '个人外教-服务流程'
  end

  def geren_waijiao_shoufei_qingkuang
    @title = '个人外教-收费情况'
  end

  def geren_waijiao_changjian_wenti
    @title = '个人外教-服务优势'
  end
  
  def zhujia_waijiao_fuwu_youshi
    @title = '住家外教-服务优势'
  end

  def zhujia_waijiao_fuwu_liucheng
    @title = '住家外教-服务流程'
  end

  def zhujia_waijiao_jiating_xuzhi
    @title = '住家外教-家庭须知'
  end

  def zhujia_waijiao_changjian_wenti
    @title = '住家外教-常见问题'
  end

  def waiguo_lietou_fuwu_liucheng
    @title = '外国猎头-服务流程'
  end

  def waiguo_lietou_shoufei_qingkuang
    @title = '外国猎头-收费情况'
  end

  def contact_us
    @title = "联系我们"
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