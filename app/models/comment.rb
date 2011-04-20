class Comment
  include Mongoid::Document
  field :user_id, :type => Integer
  field :asset_id, :type => Integer
  field :body
  field :created_at, :type => DateTime
  field :updated_at, :type => DateTime

  belongs_to :asset
  belongs_to :user 

  def to_slug
    # XXX: Not great given the possability for duplication.. should use username+unix timestamp
    created_at.to_s.downcase.gsub(/[^a-z0-9]/i, '-').gsub(/-{2,}/, '-')
  end
end
