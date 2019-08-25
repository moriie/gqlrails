QueryType = GraphQL::ObjectType.define do
    name "Query"
    description "The query root for this schema"

    field :weapon {
        type WeaponType
        argument :id, !types.ID 
        resolve -> (obj, args, context) {
            Weapon.find(args[:id])
        }
    }

    field :hero {
        type HeroType
        argument :id, !types.ID
        resolve -> (obj, args, context) {
            Hero.find(args[:id])
        }
    }
end