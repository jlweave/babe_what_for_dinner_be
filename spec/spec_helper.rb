# This file was generated by the `rails generate rspec:install` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# See https://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # This option will default to `:apply_to_host_groups` in RSpec 4 (and will
  # have no way to turn it off -- the option exists only for backwards
  # compatibility in RSpec 3). It causes shared context metadata to be
  # inherited by the metadata hash of host groups and examples, rather than
  # triggering implicit auto-inclusion in groups with matching metadata.
  config.shared_context_metadata_behavior = :apply_to_host_groups

# The settings below are suggested to provide a good initial experience
# with RSpec, but feel free to customize to your heart's content.
=begin
  # This allows you to limit a spec run to individual examples or groups
  # you care about by tagging them with `:focus` metadata. When nothing
  # is tagged with `:focus`, all examples get run. RSpec also provides
  # aliases for `it`, `describe`, and `context` that include `:focus`
  # metadata: `fit`, `fdescribe` and `fcontext`, respectively.
  config.filter_run_when_matching :focus

  # Allows RSpec to persist some state between runs in order to support
  # the `--only-failures` and `--next-failure` CLI options. We recommend
  # you configure your source control system to ignore this file.
  config.example_status_persistence_file_path = "spec/examples.txt"

  # Limits the available syntax to the non-monkey patched syntax that is
  # recommended. For more details, see:
  # https://relishapp.com/rspec/rspec-core/docs/configuration/zero-monkey-patching-mode
  config.disable_monkey_patching!

  # Many RSpec users commonly either run the entire suite or an individual
  # file, and it's useful to allow more verbose output when running an
  # individual spec file.
  if config.files_to_run.one?
    # Use the documentation formatter for detailed output,
    # unless a formatter has already been configured
    # (e.g. via a command-line flag).
    config.default_formatter = "doc"
  end

  # Print the 10 slowest examples and example groups at the
  # end of the spec run, to help surface which specs are running
  # particularly slow.
  config.profile_examples = 10

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option.
  # Setting this allows you to use `--seed` to deterministically reproduce
  # test failures related to randomization by passing the same `--seed` value
  # as the one that triggered the failure.
  Kernel.srand config.seed
=end
end



# [
#     {
#         "id": 618390,
#         "title": "Quick Apple Pies",
#         "image": "https://spoonacular.com/recipeImages/618390-312x231.jpg",
#         "imageType": "jpg",
#         "usedIngredientCount": 1,
#         "missedIngredientCount": 2,
#         "missedIngredients": [
#             {
#                 "id": 1123,
#                 "amount": 1.0,
#                 "unit": "",
#                 "unitLong": "",
#                 "unitShort": "",
#                 "aisle": "Milk, Eggs, Other Dairy",
#                 "name": "egg",
#                 "original": "1 Egg",
#                 "originalName": "Egg",
#                 "meta": [],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/egg.png"
#             },
#             {
#                 "id": 10018338,
#                 "amount": 1.0,
#                 "unit": "sheet",
#                 "unitLong": "sheet",
#                 "unitShort": "sheet",
#                 "aisle": "Refrigerated;Frozen",
#                 "name": "pastry dough",
#                 "original": "1 sheet Pastry Dough",
#                 "originalName": "Pastry Dough",
#                 "meta": [],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/dough.jpg"
#             }
#         ],
#         "usedIngredients": [
#             {
#                 "id": 9003,
#                 "amount": 5.0,
#                 "unit": "medium",
#                 "unitLong": "mediums",
#                 "unitShort": "medium",
#                 "aisle": "Produce",
#                 "name": "apples",
#                 "original": "5 medium Apples",
#                 "originalName": "Apples",
#                 "meta": [],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/apple.jpg"
#             }
#         ],
#         "unusedIngredients": [],
#         "likes": 1005
#     },
#     {
#         "id": 615374,
#         "title": "Mom's Apple Pie",
#         "image": "https://spoonacular.com/recipeImages/615374-312x231.jpg",
#         "imageType": "jpg",
#         "usedIngredientCount": 1,
#         "missedIngredientCount": 2,
#         "missedIngredients": [
#             {
#                 "id": 2010,
#                 "amount": 1.0,
#                 "unit": "tsp",
#                 "unitLong": "teaspoon",
#                 "unitShort": "tsp",
#                 "aisle": "Spices and Seasonings",
#                 "name": "cinnamon",
#                 "original": "1 to 1 ½ tsp. cinnamon",
#                 "originalName": "cinnamon",
#                 "meta": [],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg"
#             },
#             {
#                 "id": 1145,
#                 "amount": 3.0,
#                 "unit": "tbsp",
#                 "unitLong": "tablespoons",
#                 "unitShort": "Tbsp",
#                 "aisle": "Milk, Eggs, Other Dairy",
#                 "name": "butter",
#                 "original": "3 tbsp. unsalted butter",
#                 "originalName": "unsalted butter",
#                 "meta": [
#                     "unsalted"
#                 ],
#                 "extendedName": "unsalted butter",
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg"
#             }
#         ],
#         "usedIngredients": [
#             {
#                 "id": 9003,
#                 "amount": 8.0,
#                 "unit": "large",
#                 "unitLong": "larges",
#                 "unitShort": "large",
#                 "aisle": "Produce",
#                 "name": "apples",
#                 "original": "8 large apples, peeled, cored and sliced",
#                 "originalName": "apples, peeled, cored and sliced",
#                 "meta": [
#                     "cored",
#                     "peeled",
#                     "sliced"
#                 ],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/apple.jpg"
#             }
#         ],
#         "unusedIngredients": [],
#         "likes": 434
#     },
#     {
#         "id": 611026,
#         "title": "Apple Crisp III",
#         "image": "https://spoonacular.com/recipeImages/611026-312x231.jpg",
#         "imageType": "jpg",
#         "usedIngredientCount": 1,
#         "missedIngredientCount": 2,
#         "missedIngredients": [
#             {
#                 "id": 1077,
#                 "amount": 0.75,
#                 "unit": "cup",
#                 "unitLong": "cups",
#                 "unitShort": "cup",
#                 "aisle": "Milk, Eggs, Other Dairy",
#                 "name": "milk",
#                 "original": "3/4 cup milk",
#                 "originalName": "milk",
#                 "meta": [],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/milk.png"
#             },
#             {
#                 "id": 8120,
#                 "amount": 2.0,
#                 "unit": "cups",
#                 "unitLong": "cups",
#                 "unitShort": "cup",
#                 "aisle": "Cereal",
#                 "name": "rolled oats",
#                 "original": "2 cups rolled oats",
#                 "originalName": "rolled oats",
#                 "meta": [],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg"
#             }
#         ],
#         "usedIngredients": [
#             {
#                 "id": 9003,
#                 "amount": 2.5,
#                 "unit": "cups",
#                 "unitLong": "cups",
#                 "unitShort": "cup",
#                 "aisle": "Produce",
#                 "name": "macintosh apples",
#                 "original": "2 1/2 cups Macintosh apples - peeled, cored and quartered",
#                 "originalName": "Macintosh apples - peeled, cored and quartered",
#                 "meta": [
#                     "cored",
#                     "peeled",
#                     "quartered"
#                 ],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/apple.jpg"
#             }
#         ],
#         "unusedIngredients": [],
#         "likes": 138
#     },
#     {
#         "id": 47950,
#         "title": "Cinnamon Apple Crisp",
#         "image": "https://spoonacular.com/recipeImages/47950-312x231.jpg",
#         "imageType": "jpg",
#         "usedIngredientCount": 1,
#         "missedIngredientCount": 2,
#         "missedIngredients": [
#             {
#                 "id": 93674,
#                 "amount": 0.5,
#                 "unit": "cup",
#                 "unitLong": "cups",
#                 "unitShort": "cup",
#                 "aisle": "Milk, Eggs, Other Dairy",
#                 "name": "land o cinnamon sugar butter spread",
#                 "original": "1/2 cup Land O Lakes® Cinnamon Sugar Butter Spread",
#                 "originalName": "Land O Lakes® Cinnamon Sugar Butter Spread",
#                 "meta": [
#                     "lakes®"
#                 ],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/cinnamon-sugar-butter.png"
#             },
#             {
#                 "id": 8120,
#                 "amount": 0.75,
#                 "unit": "cup",
#                 "unitLong": "cups",
#                 "unitShort": "cup",
#                 "aisle": "Cereal",
#                 "name": "old-fashioned oats",
#                 "original": "3/4 cup uncooked old-fashioned oats",
#                 "originalName": "uncooked old-fashioned oats",
#                 "meta": [
#                     "uncooked"
#                 ],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg"
#             }
#         ],
#         "usedIngredients": [
#             {
#                 "id": 9003,
#                 "amount": 6.0,
#                 "unit": "cups",
#                 "unitLong": "cups",
#                 "unitShort": "cup",
#                 "aisle": "Produce",
#                 "name": "apples",
#                 "original": "6 medium (6 cups) apples, peeled, cored, sliced",
#                 "originalName": "medium apples, peeled, cored, sliced",
#                 "meta": [
#                     "cored",
#                     "peeled",
#                     "sliced"
#                 ],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/apple.jpg"
#             }
#         ],
#         "unusedIngredients": [],
#         "likes": 35
#     },
#     {
#         "id": 70306,
#         "title": "Easy Cinnamon Apple Pie",
#         "image": "https://spoonacular.com/recipeImages/70306-312x231.jpg",
#         "imageType": "jpg",
#         "usedIngredientCount": 1,
#         "missedIngredientCount": 2,
#         "missedIngredients": [
#             {
#                 "id": 11408,
#                 "amount": 1.6666666,
#                 "unit": "cups",
#                 "unitLong": "cups",
#                 "unitShort": "cup",
#                 "aisle": "Frozen",
#                 "name": "hershey's cinnamon chips",
#                 "original": "1-2/3 cups (10-oz. pkg.) HERSHEY'S Cinnamon Chips, divided",
#                 "originalName": "(10-oz. pkg.) HERSHEY'S Cinnamon Chips, divided",
#                 "meta": [
#                     "divided",
#                     "(10-oz. pkg.)"
#                 ],
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/french-fries-isolated.jpg"
#             },
#             {
#                 "id": 18334,
#                 "amount": 15.0,
#                 "unit": "oz",
#                 "unitLong": "ounces",
#                 "unitShort": "oz",
#                 "aisle": "Refrigerated;Frozen;Baking",
#                 "name": "pie crusts",
#                 "original": "1 package (15 oz.) refrigerated pie crusts, or pastry for double-crust 9-inch pie",
#                 "originalName": "package refrigerated pie crusts, or pastry for double-crust 9-inch pie",
#                 "meta": [
#                     "refrigerated",
#                     "for double-crust pie"
#                 ],
#                 "extendedName": "refrigerated pie crusts",
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg"
#             }
#         ],
#         "usedIngredients": [
#             {
#                 "id": 9003,
#                 "amount": 40.0,
#                 "unit": "oz",
#                 "unitLong": "ounces",
#                 "unitShort": "oz",
#                 "aisle": "Produce",
#                 "name": "apples",
#                 "original": "2 cans (20-oz. each) sliced apples (not pie filling), drained *",
#                 "originalName": "cans each) sliced apples (not pie filling), drained",
#                 "meta": [
#                     "drained",
#                     "sliced",
#                     "canned",
#                     "(not pie filling)"
#                 ],
#                 "extendedName": "canned apples",
#                 "image": "https://spoonacular.com/cdn/ingredients_100x100/apple.jpg"
#             }
#         ],
#         "unusedIngredients": [],
#         "likes": 5
#     }
# ]