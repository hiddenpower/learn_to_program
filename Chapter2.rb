def hours_in_year
  #1 year = 365 days
  #1 day = 24 hours
  result = 365 * 24
end

#hours_in_year

def minutes_in_decade
  #1 decade = 10 years
  #1 year = 8760 hours
  #1 hours = 60 minutes
  result = 10*hours_in_year*60
end

#minutes_in_decade

def age_in_seconds(age)
  #1 year = 8760 hours
  #1 hours = 60 minutes
  #1 minute = 60 seconds
  result = age*hours_in_year*60*60
end
#age_in_seconds(25)

def authors_age
  result = (1111000000)/(3600*8760)
end

#authors_age