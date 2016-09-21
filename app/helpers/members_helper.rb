module MembersHelper
	def simulations_chart_data
		(3.weeks.ago.to_date..Date.today).map do |date|
			{
				created_at: date,
				rate_use: Simulation.where("date(created_at) = ?", date).length
			}
		end
	end
end
