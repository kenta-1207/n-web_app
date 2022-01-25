class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
      mail to:"ktnstn.237rogs@gmail.com",subject: "サンプル依頼が届きました。"
  end
end