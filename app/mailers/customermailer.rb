class Customermailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customermailer.welcome.subject
  #
  def welcome(customer)
    @customer = customer
	mail(:to => customer.email, :subject => "Welcome to Dublin bicycles!")
  end
end
