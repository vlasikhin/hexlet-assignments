# frozen_string_literal: true

def count_by_years(users)
  males_birthdays_year = users.each_with_object([]) do |hash, arr|
    arr << hash[:birthday].split('-').first if hash[:gender] == 'male'
  end

  result = {}

  males_birthdays_year.each do |year|
    result[year] = males_birthdays_year.count(year)
  end

  result
end

# END
