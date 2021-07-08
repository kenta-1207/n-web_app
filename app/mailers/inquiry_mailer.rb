class InquiryMailer < ApplicationMailer
  
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'tessin1396@icloud.com',
      to:   'ktnstn.237rogs@gmail.com',
      subject: 'お問い合わせ通知'
    )
  end
end
