class Article < ApplicationRecord
    validates :title, presence: { message: "must be given please" }
    validates :body, presence: { message: "must be given please" }, length: { minimum: 10 }
end
