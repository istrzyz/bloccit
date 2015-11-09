Rails.application.routes.draw do
  get 'sponsored_posts_controller/show'

  get 'sponsored_posts_controller/new'

  get 'sponsored_posts_controller/edit'

  resources :topics do
    resources :posts, except: [:index]
    resources :SponsoredPost
  end

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  root to: 'welcome#index'
end
