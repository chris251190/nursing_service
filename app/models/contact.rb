class Contact < MailForm::Base
  attribute :anrede, :validate => true
  attribute :name,      :validate => true
  attribute :telefon
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Kontaktformular",
      :to => "christian_lehr.1@gmx.de",
      :from => %("#{name}" <#{email}>)
    }
  end
end