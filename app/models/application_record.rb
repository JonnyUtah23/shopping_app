class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  has_many :store, :dependent => :destroy
  has_many :list, :dependent => :destroy
end
