class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
      if @contact.page_select_id == 1
        mail to:"ktnstn.237rogs@gmail.com",subject: "サンプル依頼が届きました。"
      else
        mail to:"k-watanabe@net-nakayama.co.jp",subject: "成功"
      end
  end
end