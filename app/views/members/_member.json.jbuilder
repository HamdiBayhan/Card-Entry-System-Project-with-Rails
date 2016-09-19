json.extract! member, :id, :cardId, :email, :name, :lastname, :confirm, :useRate, :inside, :entryDate, :memberDate, :imagePath, :created_at, :updated_at
json.url member_url(member, format: :json)