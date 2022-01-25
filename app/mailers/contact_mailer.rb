class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
      if @contact.user.page_select_id == 1
        mail to:"ktnstn.237rogs@gmail.com",subject: "サンプル依頼が届きました。"
      elsif @contact.user.page_select_id == 2
        mail to:"k-watanabe@net-nakayama.co.jp",subject: "成功"
      else
        mail to:"tessin1396@icloud.com",subject: "完璧！"
      end
  end
end