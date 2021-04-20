class Term < ActiveHash::Base
  self.data = [
    { id: 1, name: '学期を選択' },
    { id: 2, name: '1学期' },
    { id: 3, name: '2学期' },
    { id: 4, name: '3学期' },
    { id: 5, name: '前期中間'},
    { id: 6, name: '前期期末'},
    { id: 7, name: '後期中間'},
    { id: 8, name: '後期期末'},
  ]
  include ActiveHash::Associations
  
  has_many :scores
  
end
