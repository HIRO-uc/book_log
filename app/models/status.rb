class Status < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '読みたい本' },
    { id: 2, name: '読んでいる本' },
    { id: 3, name: '読み終わった本' }
  ]

  include ActiveHash::Associations
  has_many :books
end
