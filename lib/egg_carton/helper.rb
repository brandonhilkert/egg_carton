module EggCarton
  module Helper
    def average(numerator, denominator, precision = 0)
      return 0 if denominator.zero?
      (numerator.to_f / denominator.to_f).round(precision)
    end

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