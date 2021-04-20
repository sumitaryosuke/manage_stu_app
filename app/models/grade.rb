class Grade < ActiveHash::Base
  self.data = [
    { id: 1, name: '学年を選択' },
    { id: 2, name: '1年' },
    { id: 3, name: '2年' },
    { id: 4, name: '3年' }
  ]
  include ActiveHash::Associations
  has_many :scores
end
