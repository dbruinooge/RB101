# Inputs are loan amount, loan duration (years), and APR
# Outputs are monthly payment, loan duration (months), and MPR

# START

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def floating?(num)
  num.to_f.to_s == num
end

# PRINT greeting
prompt("Welcome to Loan Calculator!")
puts

# GET loan amount as integer and validate
amount = ''
loop do
  prompt("Please enter the whole dollar amount of your loan:")
  amount = gets.chomp.delete_prefix("$").delete(",")
  break if integer?(amount) && amount.to_i > 0
  prompt("Oops! That doesn't appear to be a valid loan amount.")
end

# GET loan duration as integer and validate
duration_years = ''
loop do
  prompt("Please enter the duration of the loan in years (integer form):")
  duration_years = gets.chomp
  break if integer?(duration_years) && duration_years.to_i > 0
  prompt("Oops! That doesn't appear to be a valid loan duration.")
end

# GET APR as floating or integer percentage and validate
apr = ''
loop do
  prompt("Please enter the annual percentage rate (APR) of
    the loan as a percentage (e.g. 5.5%):")
  apr = gets.chomp.delete_suffix("%")
  break if (floating?(apr) || integer?(apr)) && apr.to_f >= 0
  prompt("Oops! That doesn't appear to be a valid APR.")
end

# SET loan duration in months = loan duration in years * 12
duration_months = duration_years.to_i * 12

# SET MPR = APR / 12
mpr = (apr.to_f / 100) / 12

# SET payments = loan amount *
#     (monthly interest rate /
#     (1 - (1 + monthly interest rate)**(-loan duration in months)))
monthly_payments = (amount.to_f *
                   (mpr /
                   (1 - (1 + mpr)**(-duration_months.to_f)))).floor(2)

puts
prompt("Calculating your loan...")
# PRINT loan duration in months
prompt("Duration in months: #{duration_months}")
# PRINT MPR
prompt("Monthly percentage rate (MPR): #{(mpr * 100).floor(2)}%")
# PRINT monthly payments
prompt("Monthly payments: $#{monthly_payments}")

# PRINT goodbye
puts
prompt("Thank you for using Loan Calculator. Have a great day!")

# END
