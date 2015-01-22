class ChartsController < ApplicationController

	def show
		
	end

	def chart_data
		service = ChartService.new()
		schools = School.all + Organization.all.to_a
		
		render :json => {
			:type => 'ColumnChart',
			:cols => [['string', 'BEN'], ['number', 'Average Cost Per Megabit']],
			:rows => schools.inject([]) do |entry, school|
				avg = service.average_cost_per_megabit(school)
				entry << [school.ben, avg]
			end,
			:options => {
		        :chartArea => { :width => '90%', :height => '75%' },
		        :hAxis => { :showTextEvery => 30 },
		        :legend => 'bottom',
		      }
		}
	end
end