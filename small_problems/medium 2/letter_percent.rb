def letter_percentages(str)
  regs = [/[[:lower:]]/, /[[:upper:]]/]
  lower, upper = regs.map { |reg| (str.scan(reg).size.to_f * 100 / str.size).round(1) }
  {lowercase: lower, uppercase: upper, neither: (100 - lower - upper)}
end


puts letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }