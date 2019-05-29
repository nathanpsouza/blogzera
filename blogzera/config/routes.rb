Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
end
