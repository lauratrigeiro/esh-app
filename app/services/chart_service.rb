class ChartService

	def initialize
	end

	def average_cost_per_megabit(school)
		purchases = school.purchases
		sum = 0
		purchases.each do |purchase|
			sum += cost_per_megabit(purchase)
		end
		(sum / purchases.length*1.0).round(2)
	end

	def cost_per_megabit(purchase)
		bandwidth_mb = bandwidth_in_mb(purchase.bandwidth, purchase.measure)
		if bandwidth_mb < 0
			"#{purchase.measure} is not a proper measure"
		else
			purchase.cost*1.0 / bandwidth_mb
		end
	end

	private

	def bandwidth_in_mb(bandwidth, measure)
		case measure
		when "k"
			bandwidth / 1000.0
		when "m"
			bandwidth
		when "g"
			bandwidth * 1000
		when "t"
			bandwidth * 1_000_000
		else
			-1
		end
	end
end