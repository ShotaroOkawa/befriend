class Country < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, region: 'Europe', name: 'Iceland' },
    { id: 3, region: 'Europe', name: 'Azerbaijan' },
    { id: 4, region: 'Europe', name: 'Armenia' },
  ]
end
