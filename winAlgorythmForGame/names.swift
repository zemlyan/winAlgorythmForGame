//
//  names.swift
//  winAlgorythmForGame
//
//  Created by Oleksii Yelnykov on 02.08.2020.
//  Copyright © 2020 Oleksii Yelnykov. All rights reserved.
//

import Foundation
let playersNameArray = ["Baxter", "Junior", "Labutan", "Bonney", "Clyde", "Bruce", "Silvester", "Johnnie", "Frankie", "Zemlyan", "Michael", "Christopher", "Jessica", "Matthew", "Ashley", "Jennifer", "Joshua", "Amanda", "Daniel", "David", "James", "Robert", "John", "Joseph", "Andrew", "Ryan", "Brandon", "Jason", "Justin", "Sarah", "William", "Jonathan", "Stephanie", "Brian", "Nicole", "Nicholas", "Anthony", "Heather", "Eric", "Elizabeth", "Adam", "Megan", "Melissa", "Kevin", "Steven", "Thomas", "Timothy", "Christina", "Kyle", "Rachel", "Laura", "Lauren", "Amber", "Brittany", "Danielle", "Richard", "Kimberly", "Jeffrey", "Amy", "Crystal", "Michelle", "Tiffany", "Jeremy", "Benjamin", "Mark", "Emily", "Aaron", "Charles", "Rebecca", "Jacob", "Stephen", "Patrick", "Sean", "Erin", "Zachary", "Jamie", "Kelly", "Samantha", "Nathan", "Sara", "Dustin", "Paul", "Angela", "Tyler", "Scott", "Katherine", "Andrea", "Gregory", "Erica", "Mary", "Travis", "Lisa", "Kenneth", "Bryan", "Lindsey", "Kristen", "Jose", "Alexander", "Jesse", "Katie", "Lindsay", "Shannon", "Vanessa", "Courtney", "Christine", "Alicia", "Cody", "Allison", "Bradley", "Samuel", "Shawn", "April", "Derek", "Kathryn", "Kristin", "Chad", "Jenna", "Tara", "Maria", "Krystal", "Jared", "Anna", "Edward", "Julie", "Peter", "Holly", "Marcus", "Kristina", "Natalie", "Jordan", "Victoria", "Jacqueline", "Corey", "Keith", "Monica", "Juan", "Donald", "Cassandra", "Meghan", "Joel", "Shane", "Phillip", "Patricia", "Brett", "Ronald", "Catherine", "George", "Antonio", "Cynthia", "Stacy", "Kathleen", "Raymond", "Carlos", "Brandi", "Douglas", "Nathaniel", "Ian", "Craig", "Brandy", "Alex", "Valerie", "Veronica", "Cory", "Whitney", "Gary", "Derrick", "Philip", "Luis", "Diana", "Chelsea", "Leslie", "Caitlin", "Leah", "Natasha", "Erika", "Casey", "Latoya", "Erik", "Dana", "Victor", "Brent", "Dominique", "Frank", "Brittney", "Evan", "Gabriel", "Julia", "Candice", "Karen", "Melanie", "Adrian", "Stacey", "Margaret", "Sheena", "Wesley", "Vincent", "Alexandra", "Katrina", "Bethany", "Nichole", "Larry", "Jeffery", "Curtis", "Carrie", "Todd", "Blake", "Christian", "Randy", "Dennis", "Alison", "Trevor", "Seth", "Kara", "Joanna", "Rachael", "Luke", "Felicia", "Brooke", "Austin", "Candace", "Jasmine", "Jesus", "Alan", "Susan", "Sandra", "Tracy", "Kayla", "Nancy", "Tina", "Krystle", "Russell", "Jeremiah", "Carl", "Miguel", "Tony", "Alexis", "Gina", "Jillian", "Pamela", "Mitchell", "Hannah", "Renee", "Denise", "Molly", "Jerry", "Misty", "Mario", "Johnathan", "Jaclyn", "Brenda", "Terry", "Lacey", "Shaun", "Devin", "Heidi", "Troy", "Lucas", "Desiree", "Jorge", "Andre", "Morgan", "Drew", "Sabrina", "Miranda", "Alyssa", "Alisha", "Teresa", "Johnny", "Meagan", "Allen", "Krista", "Marc", "Tabitha", "Lance", "Ricardo", "Martin", "Chase", "Theresa", "Melinda", "Monique", "Tanya", "Lina", "Kristopher", "Bobby", "Caleb", "Ashlee", "Kelli", "Henry", "Garrett", "Mallory", "Jill", "Jonathon", "Kristy", "Anne", "Francisco", "Danny", "Robin", "Lee", "Tamara", "Manuel", "Meredith", "Colleen", "Lawrence", "Christy", "Ricky", "Randall", "Marissa", "Ross", "Mathew", "Jimmy", "Abigail", "Kendra", "Carolyn", "Billy", "Deanna", "Jenny", "Jon", "Albert", "Taylor", "Lori", "Rebekah", "Cameron", "Ebony", "Wendy", "Angel", "Micheal", "Kristi", "Caroline", "Colin", "Dawn", "Kari", "Clayton", "Arthur", "Roger", "Roberto", "Priscilla", "Darren", "Kelsey", "Clinton", "Walter", "Louis", "Barbara", "Isaac", "Cassie", "Grant", "Cristina", "Tonya", "Rodney", "Bridget", "Joe", "Cindy", "Oscar", "Willie", "Maurice", "Jaime", "Angelica", "Sharon", "Julian", "Jack", "Jay", "Calvin", "Marie", "Hector", "Kate", "Adrienne", "Tasha", "Michele", "Ana", "Stefanie", "Cara", "Alejandro", "Ruben", "Gerald", "Audrey", "Kristine", "Ann", "Shana", "Javier", "Katelyn", "Brianna", "Bruce", "Deborah", "Claudia", "Carla", "Wayne", "Roy", "Virginia", "Haley", "Brendan", "Janelle", "Jacquelyn", "Beth", "Edwin", "Dylan", "Dominic", "Latasha", "Darrell", "Geoffrey", "Savannah", "Reginald", "Carly", "Fernando", "Ashleigh", "Aimee", "Regina", "Mandy", "Sergio", "Rafael", "Pedro", "Janet", "Kaitlin", "Frederick", "Cheryl", "Autumn", "Tyrone", "Martha", "Omar", "Lydia", "Jerome", "Theodore", "Abby", "Neil", "Shawna", "Sierra", "Nina", "Tammy", "Nikki", "Terrance", "Donna", "Claire", "Cole", "Trisha", "Bonnie", "Diane", "Summer", "Carmen", "Mayra", "Jermaine", "Eddie", "Micah", "Marvin", "Levi", "Emmanuel", "Brad", "Taryn", "Toni", "Jessie", "Evelyn", "Darryl", "Ronnie", "Joy", "Adriana", "Ruth", "Mindy", "Spencer", "Noah", "Raul", "Suzanne", "Sophia", "Dale", "Jodi", "Christie", "Raquel", "Naomi", "Kellie", "Ernest", "Jake", "Grace", "Tristan", "Shanna", "Hilary", "Eduardo", "Ivan", "Hillary", "Yolanda", "Alberto", "Andres", "Olivia", "Armando", "Paula", "Amelia", "Sheila", "Rosa", "Robyn", "Kurt", "Dane", "Glenn", "Nicolas", "Gloria", "Eugene", "Logan", "Steve", "Ramon", "Bryce", "Tommy", "Preston", "Keri", "Devon", "Alana", "Marisa", "Melody", "Rose", "Barry", "Marco", "Karl", "Daisy", "Leonard", "Randi", "Maggie", "Charlotte", "Emma", "Terrence", "Justine", "Britney", "Lacy", "Jeanette", "Francis", "Tyson", "Elise", "Sylvia", "Rachelle", "Stanley", "Debra", "Brady", "Charity", "Hope", "Melvin", "Johanna", "Karla", "Jarrod", "Charlene", "Gabrielle", "Cesar", "Clifford", "Byron", "Terrell", "Sonia", "Julio", "Stacie", "Shelby", "Shelly", "Edgar", "Roxanne", "Dwayne", "Kaitlyn", "Kasey", "Jocelyn", "Alexandria", "Harold", "Esther", "Kerri", "Ellen", "Abraham", "Cedric", "Carol", "Katharine", "Shauna", "Frances", "Antoine", "Tabatha", "Annie", "Erick", "Alissa", "Sherry", "Chelsey", "Franklin", "Branden", "Helen", "Traci", "Lorenzo", "Dean", "Sonya", "Briana", "Angelina", "Trista", "Bianca", "Leticia", "Tia", "Kristie", "Stuart", "Laurie", "Harry", "Leigh", "Elisabeth", "Alfredo", "Aubrey", "Ray", "Arturo", "Joey", "Kelley", "Max", "Andy", "Latisha", "Johnathon", "India", "Eva", "Ralph", "Yvonne", "Warren", "Kirsten", "Miriam", "Kelvin", "Lorena", "Staci", "Anita", "Rene", "Cortney", "Orlando", "Carissa", "Jade", "Camille", "Leon", "Paige", "Marcos", "Elena", "Brianne", "Dorothy", "Marshall", "Daryl", "Colby", "Terri", "Gabriela", "Brock", "Gerardo", "Jane", "Nelson", "Tamika", "Alvin", "Chasity", "Trent", "Jana", "Enrique", "Tracey", "Antoinette", "Jami", "Earl", "Gilbert", "Damien", "Janice", "Christa", "Tessa", "Kirk", "Yvette", "Elijah", "Howard", "Elisa", "Desmond", "Clarence", "Alfred", "Darnell", "Breanna", "Kerry", "Nickolas", "Maureen", "Karina", "Roderick", "Rochelle", "Rhonda", "Keisha", "Irene", "Ethan", "Alice", "Allyson", "Hayley", "Trenton", "Beau", "Elaine", "Demetrius", "Cecilia", "Annette", "Brandie", "Katy", "Tricia", "Bernard", "Wade", "Chance"]
