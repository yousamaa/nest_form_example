# frozen_string_literal: true

survey = Survey.create! name: 'Rails Survey'
question = survey.questions.create! content: 'What testing framework do you prefer?'
question.answers.create! content: 'Test::Unit'
question.answers.create! content: 'Rspec'
question.answers.create! content: 'Minitest'
question.answers.create! content: 'Other/None'

question = survey.questions.create! content: 'How many applications do you have in production?'
question.answers.create! content: '0'
question.answers.create! content: '1-2'
question.answers.create! content: '3-5'
question.answers.create! content: '6+'

question = survey.questions.create! content: 'What is the answer to the universe and everything?'
question.answers.create! content: '42'

survey = Survey.create! name: "What's your favorite Pizza?"
survey.questions.create! content: "What's your favorite kind of cheese?"
survey.questions.create! content: 'Favorite veggie?'
survey.questions.create! content: 'Favorite meat?'
survey.questions.create! content: 'Do you like thin, medium, or deep dish crust?'

survey = Survey.create! name: 'Superhero Questionnaire'
survey.questions.create! content: 'Batman or Superman?'
survey.questions.create! content: 'Spiderman or Flash?'
survey.questions.create! content: 'Aquaman or Green Lantern?'
