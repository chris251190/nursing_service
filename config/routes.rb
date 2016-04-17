Rails.application.routes.draw do  

  root 'pages#startseite'

  get 'leistungen', to: 'pages#leistungen'

  get 'ueber_uns', to: 'pages#ueber_uns'

  get 'arbeiten_bei_pflege_team_bonert', to: 'pages#arbeiten_bei_pflege_team_bonert'

  get 'datenschutz', to: 'pages#datenschutz'  

  get 'impressum', to: 'pages#impressum'

  get 'anfahrt', to: 'pages#anfahrt'

  get 'kontakt', to: 'contacts#new'

  resources "contacts", only: [:new, :create]

end
