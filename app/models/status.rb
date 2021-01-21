class Status < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '読みたい本' },
    { id: 2, name: '読書中' },
    { id: 3, name: '読了' }
  ]

  include ActiveHash::Associations
  has_many :books
end
