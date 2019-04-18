namespace :update_db do
  desc "TODO"
  task expire_purchased: :environment do
    library = Library.all
    library.each do |o|
      o.destroy! if o.created_at < 3.days.ago
    end
  end

end
