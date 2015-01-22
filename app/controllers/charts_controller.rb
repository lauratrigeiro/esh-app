class ChartsController < ApplicationController

	def show
		@service = ChartService.new()
		@schools = School.all + Organization.all.to_a
	end
end