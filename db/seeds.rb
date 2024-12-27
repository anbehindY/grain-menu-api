Modifier.destroy_all
MenuSection.destroy_all
SectionItem.destroy_all
Menu.destroy_all
Section.destroy_all
Item.destroy_all
ModifierGroup.destroy_all

menu = Menu.create!(label: "Lunch", state: "active", start_date: Date.today, end_date: Date.today + 7.days)

section1 = Section.create!(label: "Appetizers", description: "Start your meal off right")
section2 = Section.create!(label: "Entrees", description: "The main course")

MenuSection.create(menu: menu, section: section1, display_order: 0)
MenuSection.create(menu: menu, section: section2, display_order: 1)
puts "Menu created with sections"

# Items that are not configurable
item1 = Item.create(item_type: "Product", label: "Breadsticks", description: "Garlic breadsticks with marinara sauce", price: 5.99)
item2 = Item.create(item_type: "Product", label: "Mozzarella Sticks", description: "Fried mozzarella cheese sticks with marinara sauce", price: 6.99)

SectionItem.create(section: section1, item: item1, display_order: 0)
SectionItem.create(section: section1, item: item2, display_order: 1)
puts "Unconfigurable section tems created"

# Items that are configurable
item3 = Item.create(item_type: "Product", label: "Burger", description: "Juicy beef burger with customizable toppings", price: 9.99)
item4 = Item.create(item_type: "Product", label: "Pizza", description: "Customizable pizza with various toppings", price: 12.99)

item5 = Item.create(item_type: "Component", label: "Lettuce", description: "Fresh lettuce", price: 0.50)
item6 = Item.create(item_type: "Component", label: "Tomato", description: "Fresh tomato", price: 0.50)
item7 = Item.create(item_type: "Component", label: "Cheese", description: "Melted cheese", price: 1.00)

item8 = Item.create(item_type: "Component", label: "Pepperoni", description: "Spicy pepperoni", price: 1.50)
item9 = Item.create(item_type: "Component", label: "Mushrooms", description: "Sliced mushrooms", price: 1.00)
item10 = Item.create(item_type: "Component", label: "Onions", description: "Diced onions", price: 0.75)

SectionItem.create(section: section2, item: item3, display_order: 0)
SectionItem.create(section: section2, item: item4, display_order: 1)
puts "Configurable section items created"

# Modifier groups and modifiers for configurable items
modifier_group1 = ModifierGroup.create(label: "Burger Toppings", selection_required_min: 0, selection_required_max: 3, item_id: item3.id)
modifier_group2 = ModifierGroup.create(label: "Pizza Toppings", selection_required_min: 1, selection_required_max: 3, item_id: item4.id)
puts "Modifier groups created"

Modifier.create(display_order: 0, default_quantity: 1, price_override: 0.50, item: item5, modifier_group: modifier_group1)
Modifier.create(display_order: 1, default_quantity: 1, price_override: 0.50, item: item6, modifier_group: modifier_group1)
Modifier.create(display_order: 2, default_quantity: 1, price_override: 1.00, item: item7, modifier_group: modifier_group1)

Modifier.create(display_order: 0, default_quantity: 1, price_override: 1.50, item: item8, modifier_group: modifier_group2)
Modifier.create(display_order: 1, default_quantity: 1, price_override: 1.00, item: item9, modifier_group: modifier_group2)
Modifier.create(display_order: 2, default_quantity: 1, price_override: 0.75, item: item10, modifier_group: modifier_group2)

puts "Modifiers created"
