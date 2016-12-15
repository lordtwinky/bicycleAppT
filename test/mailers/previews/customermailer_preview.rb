# Preview all emails at http://localhost:3000/rails/mailers/customermailer
class CustomermailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/customermailer/welcome
  def welcome
    Customermailer.welcome
  end

end
