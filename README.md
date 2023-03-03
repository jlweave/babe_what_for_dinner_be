<h1 align="center">
  Babe, What's For Dinner?
</h1>

<p align="center">
  <img width="600" src="https://wp.en.aleteia.org/wp-content/uploads/sites/2/2018/05/web3-mediterranean-food-middle-eastern-food-israeli-dishes-falafel-hummus-pita-bread-shutterstock.jpg?w=640&crop=1">
</p>

<h3 align="center">This repo handles the Back End project responsibilities. <a href="https://github.com/ryancanton/babe_whats_for_dinner_fe">Click Here</a> to visit our Front End repo
</h3>

## Table of Contents

- [Project Overview](#project-overview)
- [Schema](#schema)
- [Tech Stack](#tech-stack)
- [Setup and Installation](#setup-and-installation)
- [Learning Goals](#learning-goals)
- [API Information](#api-information)
- [Responsible Parties](#responsible-parties)

## Project Overview

**_Babe, What's For Dinner?_** is an application that allows users to input ingredients they have on hand to return recipes that include all of those ingredients.

If a user has MOST ingredients on hand, **_Babe, What's For Dinner?_** will return other recipes ordered by the number of missing ingredients and indicate which ingredients are missing.

When a user creates an account, they are provided their own **_Babe, What's For Dinner?_** dashboard which allows them to save recipes.

Check us out! https://babe-whats-for-dinner-be.herokuapp.com/discover

## Schema
<p align="center">
  <img width="300" src="https://user-images.githubusercontent.com/113324661/222261562-e7764f35-a8e2-4a7a-99ed-5d1e0a5ba159.png">
</p>

## API Endpoints
Here is a list of all mapped client requests with their respective json responses below them:

```GET https://babe-whats-for-dinner-be.herokuapp.com/api/v1/recipes/findByIngredients?apples,flour,sugar```
```json 
  {
    "data": [
        {
            "id": "47890",
            "type": "discover",
            "attributes": {
                "id": 47890,
                "image": "https://spoonacular.com/recipeImages/47890-312x231.jpg",
                "name": "Blackberry-Apple Pie Filling",
                "missing_ingr": [
                    {
                        "name": "blackberries",
                        "amount": 12.0,
                        "unit": "oz"
                    },
                    {
                        "name": "butter",
                        "amount": 0.5,
                        "unit": "cup"
                    }
                ],
                "missing_ingr_count": 2
            }
        },
        ...
    ]
   } 
```

```GET https://babe-whats-for-dinner-be.herokuapp.com/api/v1/recipes/479101/information```
```json
{
    "data": {
        "id": "479101",
        "type": "recipe",
        "attributes": {
            "id": 479101,
            "title": "On the Job: Pan Roasted Cauliflower From Food52",
            "ready_in_minutes": 20,
            "image": "https://spoonacular.com/recipeImages/479101-556x370.jpg",
            "summary": "If you have approximately <b>20 minutes</b> to spend in the kitchen, On the Job: Pan Roasted Cauliflower From Food52 might be an outstanding <b>dairy free, lacto ovo vegetarian, and vegan</b> recipe to try. One serving contains <b>350 calories</b>, <b>7g of protein</b>, and <b>26g of fat</b>. For <b>$1.99 per serving</b>, you get a side dish that serves 4. 225 people have made this recipe and would make it again. A mixture of breadcrumbs, sumac, pine nuts, and a handful of other ingredients are all it takes to make this recipe so flavorful. It is brought to you by Feed Me Phoebe. Overall, this recipe earns a <b>great spoonacular score of 96%</b>. If you like this recipe, you might also like recipes such as <a href=\"https://spoonacular.com/recipes/food52s-roasted-broccoli-with-smoked-paprika-vinaigrette-and-marcona-almonds-110229\">Food52's Roasted Broccoli with Smoked Paprika Vinaigrette and Marconan Almonds</a>, <a href=\"https://spoonacular.com/recipes/pan-roasted-cauliflower-1326919\">Pan-Roasted Cauliflower</a>, and <a href=\"https://spoonacular.com/recipes/pan-roasted-cauliflower-476557\">Pan-Roasted Cauliflower</a>.",
            "instructions": "Cut the florets off the stems and and then chop them into tiny florets. You can also chop up the stems into tiny pieces if you want. You should have about 6 cups of chopped cauliflower. In a large skillet heat 2 tablespoons of olive oil over medium-high heat. Add the cauliflower, 1 teaspoon of salt, rosemary, and sumac. Sauté until cauliflower is tender and starts to brown a bit, stirring as necessary, about 15 minutes. You can also add a bit of olive oil if the pan starts to get too dry or the cauliflower is starting to stick. Meanwhile, in a small skillet, toast the pinenuts over medium heat until golden brown. Set aside. Heat the remaining 2 tablespoons of olive oil in the same pan. Once oil is shimmering, toss in the breadcrumbs and stir, toasting the breadcrumbs. Season with a pinch of kosher salt and a few turns of freshly ground black pepper. Remove from the heat and toss in half of the chopped parsley. When cauliflower is done, remove from the heat and season to taste with freshly ground black pepper and a pinch or so of salt if necessary. Toss in the toasted pine nuts, the chopped raisins, and the remaining parsley. When ready to serve, sprinkle the top with the toasted breadcrumbs and some pecorino.",
            "ingredients": [
                {
                    "name": "breadcrumbs",
                    "amount": 0.5,
                    "unit": "cup"
                },
                {
                    "name": "cauliflower",
                    "amount": 1.0,
                    "unit": "head"
                },
                {
                    "name": "parsley",
                    "amount": 1.0,
                    "unit": "handful"
                },
                {
                    "name": "rosemary",
                    "amount": 2.0,
                    "unit": "teaspoons"
                },
                {
                    "name": "golden raisins",
                    "amount": 0.25,
                    "unit": "cup"
                },
                {
                    "name": "olive oil",
                    "amount": 0.25,
                    "unit": "cup"
                },
                {
                    "name": "pine nuts",
                    "amount": 0.5,
                    "unit": "cup"
                },
                {
                    "name": "sea salt",
                    "amount": 1.0,
                    "unit": "teaspoon"
                },
                {
                    "name": "sumac",
                    "amount": 0.5,
                    "unit": "teaspoon"
                }
            ]
        }
    }
}

```

```GET https://babe-whats-for-dinner-be.herokuapp.com/api/v1/user_recipes?uid=12345```
```json
{
  "data": [
    {
      "id": "20",
      "type": "user_recipe",
      "attributes": {
        "uid": "12345",
        "recipe_id": "5678",
        "recipe_name": "Peanut Butter Sandwich"
      }
    },
    {
      "id": "21",
      "type": "user_recipe",
      "attributes": {
        "uid": "12345",
        "recipe_id": "5679",
        "recipe_name": "Jelly Toast"
      }
    }
  ]
}
```

```POST https://babe-whats-for-dinner-be.herokuapp.com/api/v1/user_recipes?uid=12345&recipe_id=5678&recipe_name=RecipeName```
```json
{
  "data": 
    {
      "id": "22",
      "type": "user_recipe",
      "attributes": {
        "uid": "12345",
        "recipe_id": "5678",
        "recipe_name": "RecipeName"
      }
    }
}
```

```DELETE https://babe-whats-for-dinner-be.herokuapp.com/api/v1/user_recipes?uid=12345&recipe_id=5678```
```json
{
  "data": 
    {
      "id": "22",
      "type": "user_recipe",
      "attributes": {
        "uid": "12345",
        "recipe_id": "5678",
        "recipe_name": "RecipeName"
      }
    }
}
```
    
## Tech Stack
![BWFD Tech Stack](https://user-images.githubusercontent.com/109649285/222281020-da5e7bea-b784-41f4-83fa-6e6f8aeb90cf.png)

## Setup and Installation

From your terminal, run:

- ```git clone git@github.com:jlweave/babe_whats_for_dinner_be.git```
- ```bundle install```
- ```rails db:create```
- To run the tests: ```bundle exec rspec```
- <a href= "https://babe-whats-for-dinner-be.herokuapp.be"> Click Here </a>to run the server

## Learning Goals

- Employ Service-Oriented Architecture to create a working app with separate front and back ends
- Create a descriptive and inticing ReadMe
- Build and consume APIs
- Implement OAuth for user registration
- Create wireframes and user stories to facilitate programming

## API Information

We are consuming the <a href= "https://spoonacular.com/food-api">Spoonacular API </a>for this project. 
- <a href= "https://spoonacular.com/food-api/recipes">Recipes Index</a>
- <a href= "https://spoonacular.com/food-api/recipes/#{query}/information">Recipes Show</a>

## Responsible Parties

| [<img alt="Patricia" width="75" src="https://media.licdn.com/dms/image/D5603AQGzX_m1LUMr_A/profile-displayphoto-shrink_200_200/0/1663361750344?e=1682553600&v=beta&t=TXBR2rv_HTlX4MLFZSr_2LzvtnoAcwpSxWI_4QI4G_M"/>](https://www.linkedin.com/in/patricia-severance/) | [<img alt="Lacey" width="75" src="https://media.licdn.com/dms/image/D5635AQGZ0m5EG6d4jA/profile-framedphoto-shrink_200_200/0/1676492118517?e=1678399200&v=beta&t=Vy9bvGzaszF3QaLcnvCM0BLZ3tpaC2Pe4xUkP2EHRBc"/>](https://www.linkedin.com/in/lacey-weaver-be-dev/) | [<img alt="William" width="75" src="https://media.licdn.com/dms/image/D5603AQF-hLsK44Iehg/profile-displayphoto-shrink_200_200/0/1677788542066?e=1683158400&v=beta&t=Jrks_qkqjtZYaToYfmQ1alZ55QbIGh3r3_iO_Jr22nU"/>](https://www.linkedin.com/in/william-lampke-b4a5b5250/) | [<img alt="Ryan" width="75" src="https://media.licdn.com/dms/image/D4E03AQFAbg5Mt0mzHw/profile-displayphoto-shrink_200_200/0/1667417343436?e=1682553600&v=beta&t=RhEB2cemwMoMrLFIRoWxoo0rJtC_E2p49IKcCgj7Vew"/>](https://www.linkedin.com/in/ryan-canton-6a4854255/) | [<img alt="Bryan" width="75" src="https://media.licdn.com/dms/image/D5635AQHLsl9SWgJRJQ/profile-framedphoto-shrink_200_200/0/1677792669714?e=1678399200&v=beta&t=dcfkwSGIfADNuxlbqQVNkTGuKyMV-fNhPEKiBc3AEy0"/>](https://www.linkedin.com/in/bryanflanagan138/) | [<img alt="Brian" width="75" src="https://media.licdn.com/dms/image/C4E03AQEUXg6H7kEPUA/profile-displayphoto-shrink_200_200/0/1516937573213?e=1682553600&v=beta&t=WAVJpPaaD5UwBSm6oqRcw09jav7jqbPro8UGgW9Gw4w"/>](https://www.linkedin.com/in/brianzanti/) |
| ------------------ | ------------ | -------------- | ----------- | -------------- | ----------- |
| Patricia Severance | Lacey Weaver | William Lampke | Ryan Canton | Bryan Flanagan | Brian Zanti |
| Collaborator | Collaborator | Collaborator | Collaborator | Collaborator | Project Manager |
| [GitHub](https://github.com/pkseverance) | [GitHub](https://github.com/jlweave) | [GitHub](https://github.com/WilliamLampke) | [GitHub](https://github.com/ryancanton) | [GitHub](https://github.com/bflanagan138) | [GitHub](https://github.com/brianzanti) |
| [LinkedIn](https://www.linkedin.com/in/patricia-severance/) |  [LinkedIn](https://www.linkedin.com/in/lacey-weaver-be-dev/) | [LinkedIn](https://www.linkedin.com/in/william-lampke-b4a5b5250/) | [LinkedIn](https://www.linkedin.com/in/ryan-canton-6a4854255/) | [LinkedIn](https://www.linkedin.com/in/bryanflanagan138/) | [LinkedIn](https://www.linkedin.com/in/brianzanti/) |
