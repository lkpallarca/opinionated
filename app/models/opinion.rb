class Opinion < ApplicationRecord
  attribute :image_url, :string, default: "https://i.pinimg.com/originals/15/8b/ed/158bed9819e4fccf7e18a5eeeaf79c6b.png"

  enum category: {
    General: "general",
    Academics: "academics", 
    History: "history", 
    Events: "events", 
    Places: "places", 
    People: "people", 
    Profession: "profession",
    Animals: "animals", 
    Food: "food", 
    Movies: "movies", 
    Music: "music", 
    Objects: "objects",
    Others: "others" 
  }

  enum rating: {'5 Stars': 5, '4 Stars': 4, '3 Stars': 3, '2 Stars': 2, '1 Star': 1}

  validates :subject, length: { minimum: 2 }, presence: true
  validates :body, length: { minimum: 2 }, presence: true
end
