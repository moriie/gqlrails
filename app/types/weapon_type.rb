
WeaponType = GraphQL::ObjectType.define do
    name "Weapon"
    description "A Weapon"
    field :id, types.ID 
    field :name, types.String
    field :attack, types.Integer
    field :effect, types.String
    field :hero do
        type types[HeroType]
        argument :size, types.Int, default_value: 10
        resolve -> (weapon, args, context) {
            weapon.hero.limit(args[:size])
        }
    end
end