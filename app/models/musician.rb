class Musician
  include Neo4j::ActiveNode

  property :nickname
  property :name
  property :email

  has_many :out, :tracks, type: :contributes_with, model_class: Track
end