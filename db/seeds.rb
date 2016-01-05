deck = Deck.create({ title: 'Rails 5 ActionCable Demo', slug: 'actioncable-demo', current_slide_position: 1 })

Slide.create({ deck_id: deck.id, position: 1, partial_name: 'page_1' })
Slide.create({ deck_id: deck.id, position: 2, partial_name: 'page_2' })
Slide.create({ deck_id: deck.id, position: 3, partial_name: 'page_3' })
Slide.create({ deck_id: deck.id, position: 4, partial_name: 'page_4' })
Slide.create({ deck_id: deck.id, position: 5, partial_name: 'page_5' })
Slide.create({ deck_id: deck.id, position: 6, partial_name: 'page_6' })
Slide.create({ deck_id: deck.id, position: 7, partial_name: 'chat_demo' })
Slide.create({ deck_id: deck.id, position: 8, partial_name: 'generator' })

Chat.create({ deck_id: deck.id, message: "Hello" })
