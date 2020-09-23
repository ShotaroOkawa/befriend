class Status  < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Open' },
    { id: 3, name: 'Close' },
  ]
end
