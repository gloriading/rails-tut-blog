class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  validates :commenter, presence: { message: "must be given please" }
  validates :body, presence: { message: "must be given please" }, length: { minimum: 5 }
end
