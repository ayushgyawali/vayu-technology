namespace :import do 
	desc "Import quotes from csv file"
	task data: :environment do 
		require 'csv'
		CSV.foreach('db/quotes.csv') do |row|
			title = row[0]
			author = row[1]
			Quote.create(title: title, author: author)
		end 
	end 
end
