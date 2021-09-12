class ContactMailer < ApplicationMailer
  has_many :users
  
  def contact_mail(contact)
    @contact = contact
    if current_user.page_select_id = 1
      mail to:"ktnstn.237rogs@gmail.com",subject: "サンプル依頼が届きました。"
    else
      mail to:"tessin1396@icloud.com",subject: "サンプル依頼が届きました。"
    end
  end
end
