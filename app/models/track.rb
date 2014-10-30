class Track
  include Neo4j::ActiveNode

  property :title
  property :type

  has_one :in, :author, origin: :contributes_with, model_class: Musician
end