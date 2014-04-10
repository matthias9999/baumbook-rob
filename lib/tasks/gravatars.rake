desc "Import avatars from a user's gravatars url"
task :import_avatars => :environment do
	puts "Importing avatars from gravatar"
	User.get_gravatars
	puts "Avatars updated."
end