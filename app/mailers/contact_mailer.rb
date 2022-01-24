class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
      mail to:"k-watanabe@net-nakayama.co.jp",subject: "サンプル依頼が届きました。"
  end
end