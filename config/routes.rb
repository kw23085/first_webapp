Rails.application.routes.draw do

  root 'posts#index'
  resources :users

  # when you start doing comments, you can nest comment routes inside of posts
  resources :posts do
    resources :comments
  end

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




# POST posts/:post_id/comments => 'comments#create'
# def create
#   @comment = Comment.new(comment_params)
#   @comment.post = Post.find(params[:post_id])
#   @comment.user = current_user
#   @comment.save
# end