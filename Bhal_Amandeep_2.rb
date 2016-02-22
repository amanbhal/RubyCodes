=begin
Extend the currency-conversion example from the text so that you can write:

5.dollars.in(:euros)
10.euros.in(:rupees)
…

You should support the currencies 'dollars', 'euros', 'rupees', and 'yen' where the conversions are: 1 rupee
to 0.019 dollars, 1 yen to 0.013 dollars, 1 euro to 1.292 dollars.

Both the singular and plural forms of each currency should be acceptable, e.g. 1.dollar.in(:rupees) and
10.rupees.in(:euro) should work.
=end

class Numeric
  @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id, *args, &block)   # capture all args in case have to call super
    if method_id == :in
      convert_to = args[0].to_s.gsub( /s$/, '')
      if @@currencies.has_key?(convert_to)
        self / @@currencies[convert_to]
      else
        super
      end
    else
      singular_currency = method_id.to_s.gsub( /s$/, '')
      if @@currencies.has_key?(singular_currency)
        self * @@currencies[singular_currency]
      else
        super
      end
    end
  end
end

# Test Cases
val = 5.dollars.in(:euros)
puts "5.dollars.in(:euros) = #{val}"
val = 1.dollar.in(:rupees)
puts "1.dollar.in(:rupees) = #{val}"
val = 10.rupees.in(:euro)
puts "10.rupees.in(:euro) = #{val}"
