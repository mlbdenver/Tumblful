# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ImageLink.create(url: 'https://pbs.twimg.com/profile_images/378800000577077151/4956a8032dd8549b99463f8501fe88bf_400x400.png', title: 'Thinkful logo')
ImageLink.create(url: 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/791px-Ruby_on_Rails.svg.png', title: "Rails logo" )
ImageLink.create(url: 'https://lh6.googleusercontent.com/-NxZGUZXZg6A/AAAAAAAAAAI/AAAAAAAAAAc/QS4oVJL2NgI/photo.jpg', title: "Ruby logo")

TextPost.create(post: 'Ecce dabo Pinkman Isai OK? Sicut locutus est tibi, et datus est, et hic sine Semper consequat volumus ... et ille in urbe ista licet? Et infernus, ubi tu non Virginiae ornare vel ipsum. Ut enim Albuquerque et ille eum iure hic, et ego ducam te ad iustitiam. Quid dicis? ')
TextPost.create(post: "Four pounds... foooour pounds as if two pounds wasn't bad enough. we're talking two three hundred boxes of sinus pills there ain't that many Smurfs in the world. So no sudo? So you do have a plan! Yeah, Mr. White! Yeah, science! ")
TextPost.create(post: "And do I need to state the obvious? I was not here. You put on a long sleeve shirt and cover those track marks on your arm. Count down from twenty, and then you dial. Hang tough, you're in the home stretch.")
