module ApplicationHelper
def signed_in?
	if session[:customer_id].nil?
		return
	else
    @current_customer = Customer.find_by_id(session[:customer_id])
	end
end

#similar to signed_in?, I want to be able to check if the person logged in is the admin, as only the admin should be able to
#edit, destroy, etc.
def admin?
	if session[:customer_id].nil?
		return
	else
    signed_in? == true
	@current_customer == Customer.find_by_id(3)
	end
end
  # the admin userName is set to Admin112358 as oppose to just 'admin' to make it harder to guess the username of the admin account
  #admin's password is 'admin'
end

def yesOrNo_boolean(boolean)
    boolean ? 'Yes' : 'No'
end

def float_euro(number)
	number_to_currency(number,:unit=>'€')
end

def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end
