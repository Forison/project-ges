Rails.application.routes.draw do
  # namespace :project_ges do
  #   scope :v1 do
      if Rails.env.development?
        mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
      end
      post '/graphql', to: 'graphql#execute'
  #   end
  # end
end
