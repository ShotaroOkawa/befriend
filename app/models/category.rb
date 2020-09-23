class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Travel' },
    { id: 3, name: 'Food/Restaurant' },
    { id: 4, name: 'General' },
  ]
end
