class Node
  include Mongoid::Document
  include Mongoid::Timestamps
  field :text, type: String
  field :completed, type: Boolean
  field :expanded, type: Boolean
  has_and_belongs_to_many :tags
  recursively_embeds_many
  embedded_in :list

  validates_presence_of :text
end
