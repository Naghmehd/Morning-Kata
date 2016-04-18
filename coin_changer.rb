class CoinChanger

  def self.make_change(cent)
    change = []
    [25, 10, 5, 1].each do |coin|
      while cents >= coin
        change << coin
        cent -= coin
      end
    end
    if cent > 4
      return [5]
    end
  end
end

# Given number of change (in cents), return an array of the least amount of coins possible that make up those cents. For example, 72 should return [25, 25, 10, 10, 1, 1].
