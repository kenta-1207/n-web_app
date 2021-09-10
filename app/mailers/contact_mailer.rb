class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    @user = User.find(params[:id])
    if page_select_id = 1, 
      mail to:"ktnstn.237rogs@gmail.com",subject: "confirmation"
    else
      mail to:"tessin1396@icloud.com",subject: "confirmation"
    end
  end
end
