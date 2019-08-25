
HeroType = GraphQL::ObjectType.define do
    name "Hero"
    description "A Hero"
    field :id, types.ID 
    field :name, types.String
    field :level, types.Integer
    field :attack, types.Integer
    field :defense, types.Integer
    field :heroclass, types.String

    field :weapons do
        type types[WeaponType]
        argument :size, types.Int, default_value: 10
        resolve -> (hero, args, context) {
             hero.weapons.limit(args[:size])
        }
    end

end