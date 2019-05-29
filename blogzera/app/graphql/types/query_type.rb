module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end

    field :posts, [Types::PostType], null: false
    field :post, Types::PostType, null: false do
      argument :id, ID, required: true
    end

    def posts
      Post.all
    end

    def post(id:)
      Post.find(id)
    end
  end
end
