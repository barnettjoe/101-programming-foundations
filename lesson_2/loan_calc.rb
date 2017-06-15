def prompt(msg)
  puts "==> #{msg}"
end

def get_info(msg, regex)
  x = nil
  loop do
    prompt msg
    str = gets.chomp
    x = str.to_f
    return x if str.match(regex) && x >= 0
    prompt "Please enter a valid number"
  end
end

prompt "Welcome to the loan repayment calculator"
loop do
  principal_prompt = "Please enter the loan amount in GBP"
  principal = get_info principal_prompt, /\A\d*.\d{,2}\Z/
  apr_prompt = "Please enter the APR. e.g. enter '5.2' for 5.2%"
  apr_percent = get_info apr_prompt, /\A\d*.\d+\Z/
  apr = 1 + (apr_percent / 100)
  years = get_info "Please enter the loan duration in years", /\A\d*.\d*\Z/
  mpr = apr / (12 * 100)
  months = years * 12.0
  monthly_repay = principal * (mpr / (1 - (1 + mpr)**-months))
  prompt "The monthly repay will be £#{monthly_repay.round 2}"
  prompt "Would you like to carry out another calculation? (y/n)"
  response = gets.chomp
  break unless response.downcase.start_with? 'y'
end
prompt "Thanks for using the loan repayment calculator"
