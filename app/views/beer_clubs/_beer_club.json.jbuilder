json.extract! beer_club, :id, :name, :year, :city, :created_at, :updated_at
json.url beer_club_url(beer_club, format: :json)