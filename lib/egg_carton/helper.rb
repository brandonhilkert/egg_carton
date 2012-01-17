module EggCarton

  module Helper

    # Public: Calculates average for a numerator and denominator.
    #
    # numberator  - The Integer or Float to use as the numberator.
    # denominator - The Integer or Float to use as the denominator.
    # precision - The Integer or decimal places to preserve.
    #
    # Examples
    #
    #   average(1, 4, 2)
    #   # => 0.25
    #
    #   average(1, 4, 1)
    #   # => 0.3
    #
    # Returns the Float result of the calculation
    def average(numerator, denominator, precision = 0)
      return 0 if denominator.zero?
      (numerator.to_f / denominator.to_f).round(precision)
    end

    # Public: Calculates conversion for a numerator and denominator.
    #
    # numberator  - The Integer or Float to use as the numberator.
    # denominator - The Integer or Float to use as the denominator.
    # precision - The Integer or decimal places to preserve.
    # opts - The options Hash
    #
    # Examples
    #
    #   conversion(1, 4, 2)
    #   # => "25%"
    #
    #   conversion(1, 4, 2, :percentage => false)
    #   # => "0.25"
    #
    #   conversion(1, 4, 1)
    #   # => "30%"
    #
    #   conversion(1, 4, 1, :percentage => false)
    #   # => "0.3"
    #
    # Returns the Float result of the calculation
    def conversion(numerator, denominator, precision = 0, opts={})
      return 0 if denominator.zero?
      as_percentage = opts[:percentage].nil? ? true : opts[:percentage]

      if as_percentage
        result = (numerator.to_f / denominator.to_f * 100).round(precision)
        "#{result}%"
      else
        result = (numerator.to_f / denominator.to_f).round(precision)
        "#{result}"
      end
    end
  end
end