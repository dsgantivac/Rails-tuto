class Article < ApplicationRecord

  # uniqueness: true solo puede haber uno con ese titulo
  validates :title, presence: true, uniqueness: true
  validates :body , presence: true, length:{minimum: 20}

  #validar un usuario con expresiones regulares
  #validates :username, format:{with: /regex/}
end
