class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    binding.pry
    if @contact.contact_user_belong_id = 1
      mail to:"ktnstn.237rogs@gmail.com",subject: "サンプル依頼が届きました。"
    if @contact.contact_user_belong_id = 2
      mail to:"tessin1396@icloud.com",subject: "サンプル依頼が届きました。"
    end
  end
end
