Rails.application.routes.draw do
  root "threads#index"
  get "/threads", to: "threads#index", as: "threads"
  get "/threads/new", to: "threads#new", as: "threads_new"
  post "threads/create", to: "threads#create", as: "threads_create"
  get "/threads/:thread_id", to: "threads#show", as: "thread"
  post "/threads/:thread_id/post", to: "posts#create", as: "post_create"
end
