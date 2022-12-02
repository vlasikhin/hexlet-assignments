# frozen_string_literal: true

def fibonacci(n)
  n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 )
end

# END
