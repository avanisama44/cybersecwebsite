class Publication < ActiveRecord::Base

  validates :name, :abstract, :keywords, presence: { :message => "data not present" }
  has_and_belongs_to_many :faculties
  has_and_belongs_to_many :students

  def self.search(search)
    if search
      self.where("keywords like ?", "%#{search}%")
    else
      self.all
    end
  end
  belongs_to :faculty
  belongs_to :student

end
