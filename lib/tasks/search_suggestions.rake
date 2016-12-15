namespace :search_suggestions do
	desc "Generate search suggestions from bicycles"
	task :index => :environment do	
		SearchSuggestion.index_bicycles
	end
end