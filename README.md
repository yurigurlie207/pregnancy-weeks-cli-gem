## Pregnancy Weeks Information

This gem will allow a user to interact through a CLI. The CLI will prompt a user to look into the various weeks of the three trimesters of a 9-month pregnancy to stay informed. You will find out how big your baby is in weight (both US and metric), what fruit size best compares to the size of the baby in any given week, as well as how many more weeks to go before baby's arrival. You will also be able to look further into each of the 1-42 weeks of pregnancy for specific symptoms, and get a list of further readings that would be meaningful to research for that week.

### Prerequisites

Ruby
IDE with gem bundler installed

### Installing

Open your IDE of choice (Learn IDE 3)

1. Clone a copy of this repository off the github address (SSH): git@github.com:yurigurlie207/pregnancy-weeks-info-cli-gem.git

  In your IDE command prompt, type "git clone [paste SSH address here]"

2. Go into the main folder you will be running the cli from:

  In your IDE command prompt, type "cd pregnancy_weeks-info-cli-gem"

3. Run the CLI

  In your IDE command prompt, type "ruby bin/pregnancy_weeks_info"

THIS WILL RUN THE CLI PROGRAM
Here's an example of the CLI program when it successfully runs:

Hello, and Welcome to Discovering all the miraculous events during the 42 Weeks of Pregnancy!
Which pregnancy weeks would you like more info?
Enter F: First Trimester   Weeks 1-13
Enter S: Second Trimester  Weeks 14-27
Enter T: Third Trimester   Weeks 28-42
Enter X to exit anytime

F

[Week 1]  No baby yet! | No baby yet! | size of a/an seed | 40 more week(s) to go!
[Week 2]  Baby's super tiny! | Baby's super tiny! | size of a/an seed | 37 more week(s) to go!
[Week 3]  Baby's super tiny! | Baby's super tiny! | size of a/an poppy-seed | 36 more week(s) to go!
[Week 4]  Baby's super tiny! | Baby's super tiny! | size of a/an orange-seed | 35 more week(s) to go!
[Week 5]  0.2-0.25 in. long | 0.5-0.6 cm long | size of a/an sweet-pea | 34 more week(s) to go!
[Week 6]  0.25 in. long | 0.6 cm long | size of a/an blueberry | 33 more week(s) to go!
[Week 7]  0.5 in. long | 1.3 cm long | size of a/an raspberry | 32 more week(s) to go!
[Week 8]  1 in. long | 2.5 cm long | size of a/an green-olive | 31 more week(s) to go!
[Week 9]  1.25-1.5 in. long | Approx. 3.2-3.8 cm long | size of a/an prune | 30 more week(s) to go!
[Week 10]  1.5 in., 0.25 oz | 3.8 cm, 7 g | size of a/an strawberry | 29 more week(s) to go!
[Week 11]  2-2.25 in., 0.5 oz | 5-5.7 cm, 14 g | size of a/an lime | 28 more week(s) to go!
[Week 12]  3 in., 1 oz | 7.6 cm, 28 g | size of a/an lemon | 27 more week(s) to go!
[Week 13]  3.5-4 in., 2 oz | 9-10 cm, 57 g | size of a/an navel-orange | 26 more week(s) to go!

Which week would you like more information?

12

------------------------------------------------
INFORMATION FOR WEEK 12 OF PREGNANCY
------------------------------------------------
SYMPTOMS you may experience for this week:
     Fewer Frequent Bathroom Trips
     Occasional Headaches
     Increased Sense of Smell
     Fatigue
     Excessive Saliva
     Bloating & Gas
ADDITIONAL READINGS to look into for this week:
     Healthy Weight Gain During Pregnancy
     Allergies During Pregnancy
     When to Tell Your Boss
     Preventing & Treating Stretch Marks During Pregnancy
     Non-Alcoholic Cosmo Recipe
Read more about this week here: https://www.whattoexpect.com/pregnancy/week-by-week/week-12.aspx
Would you like to see another week? Y/N

N

Thanks for stopping by to learn more about you and your baby!


## Authors

* **Adrienne Yao** - *Initial work* - [Yurigurlie207](https://github.com/yurigurlie207)

## License

This project is licensed under the MIT License (https://opensource.org/licenses/MIT) - see the [LICENSE.txt)

## Acknowledgments

A thanks to the What to Expect website for being the source of all the information here:
https://www.whattoexpect.com/pregnancy/week-by-week/

The architecture of this program was loosely based on the World's Best Restaurant Gem maintained by the Flatiron School:
https://github.com/cjbrock/worlds-best-restaurants-cli-gem
