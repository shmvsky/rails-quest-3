Rails.application.routes.draw do
   root "home#index"

   get 'add-mage', to: 'characters#add_mage'
   get 'add-knight', to: 'characters#add_knight'
   get 'add-medusa', to: 'characters#add_medusa'
   get 'add-jinn', to: 'characters#add_jinn'

   get 'first-team-ultimate-attack', to: 'characters#first_team_ultimate_attack'
   get 'second-team-ultimate-attack', to: 'characters#second_team_ultimate_attack'

end
