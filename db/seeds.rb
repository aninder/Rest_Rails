User.create!([
  {email: "a@a.com", encrypted_password: "$2a$10$FlIc/mpavpr9us2ZZBznPuuD8m1fR3RtMwX0SHKBUUdxva5dGKTO2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 11, current_sign_in_at: "2015-06-07 20:14:11", last_sign_in_at: "2015-06-06 11:45:41", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true},
  {email: "b@gmail.com", encrypted_password: "$2a$10$wxKsh23n/xkZwQC.3.UMF.dmmblAu30Ol8BnKwbMofKHwIm5XpDrS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-06-01 17:07:19", last_sign_in_at: "2015-05-31 19:07:30", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true},
  {email: "b@a.com", encrypted_password: "$2a$10$0BDJpr4J5LWjFW0E1QvNO.BYiz9Nn5t3CF2Y42Y2a9Z4bjNv.Jw8G", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-06-02 08:22:31", last_sign_in_at: "2015-06-02 08:22:31", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true}
])
Artist.create!([
  {first_name: "Kristen ", last_name: "Stewart", biography: "Though most famous for her role as Isabella \"Bella\" Swan in The Twilight (2008) Saga, Kristen Stewart has been a working actor since her early years in Los Angeles, California. Her parents, John Stewart and Jules Stewart, both work in film and television. Her mother is Australian. The family includes three boys, her older brother Cameron Stewart and two adopted brothers Dana and Taylor.\r\n\r\nAfter a talent scout caught her grade school performance in a Christmas play at the age of eight, she appeared on television in a few small roles. Her first significant role came when she was cast as Sam Jennings in The Safety of Objects (2001). Soon after that, she starred alongside Jodie Foster in the hit drama, Panic Room (2002) and was nominated for a Young Artist Award.", image: "372_universal.jpg"},
  {first_name: "Jesse ", last_name: " Eisenberg", biography: "Jesse Adam Eisenberg was born in Queens, New York, and raised in New Jersey. His mother, Amy (Fishman), is a professional clown, performing at children's birthday parties. His father, Barry Eisenberg, ran a hospital before moving on to become a college professor. He has two sisters, Kerri and Hallie Kate Eisenberg, who was a popular child star. His family is Jewish (from Poland, Russia, and Ukraine).\r\n\r\nHe attended East Brunswick High School, but he didn't really enjoy school. From age 10, he performed in children's theater. Jesse had his first professional role in an off-Broadway play, \"The Gathering\". His first television role came in 1999 with Get Real (1999), but the show was canceled in 2000. In his senior year of high school, he landed his first film role in Roger Dodger (2002). He won an award for \"Most Promising New Actor\" at the San Diego film festival.", image: "12.jpg"},
  {first_name: "Tom", last_name: "Hanks", biography: "Thomas Jeffrey Hanks was born in Concord, California, to Janet Marylyn (Frager), a hospital worker, and Amos Mefford Hanks, an itinerant cook. His father had English, and some German, ancestry, while his mother's family, originally surnamed \"Fraga\", was entirely Portuguese. Tom grew up in what he has called a \"fractured\" family. He moved around a lot after his parents' divorce, living with a succession of step-families. No problems, no abuse, no alcoholism - just a confused childhood. He had no acting experience in college and, in fact, credits the fact that he couldn't get cast in a college play with actually starting his career. He went downtown, auditioned for a community theater play, was invited by the director of that play to go to Cleveland, and there his acting career started. He met his second wife, actress Rita Wilson on the set of his television show Bosom Buddies (1980) - she appeared in one episode in the second season (1981), Bosom Buddies: All You Need Is Love (1981). They have two children, and Tom has another son and daughter by his first wife, Samantha Lewes. In 1996, he made his first step behind the camera, directing and writing as well as starring in the film, That Thing You Do! (1996).\r\n", image: "310.jpg"},
  {first_name: "Ian", last_name: " McKellen", biography: "Ian Murray McKellen was born on May 25, 1939 in Burnley, Lancashire, England, to Margery Lois (Sutcliffe) and Denis Murray McKellen, a civil engineer. He is of Scottish, Northern Irish, and English descent. During his early childhood, his parents moved with Ian and his sister Jean to the mill town of Wigan.", image: nil},
  {first_name: "<script>alert('balle')</script>", last_name: "<script>alert('balle last')</script>", biography: "yada yda ydf", image: nil}
])
Interest.create!([
  {user_id: 4, movie_id: 2},
  {user_id: 4, movie_id: 1},
  {user_id: 2, movie_id: 1},
  {user_id: 2, movie_id: 4}
])
Movie.create!([
  {title: "ass pumping", rating: 3, description: "total fuk", image: "IMG_4163.JPG"},
  {title: "qwq", rating: 9, description: "", image: "Feh_r_L_szl__-_Holt-tengeri_eml_k_I..jpg"},
  {title: "dude", rating: 2, description: "total fuk fuk", image: "MV5BMTI1NzE2NzE0OF5BMl5BanBnXkFtZTcwNjkyMTQ5MQ__._V1__SX640_SY720_.jpg"},
  {title: "samurai", rating: 9, description: "balle balle", image: "MV5BMTc5MDY1MjU5MF5BMl5BanBnXkFtZTgwNDM2OTE4MzE_._V1_.jpg"},
  {title: "new_moviwe", rating: 2, description: "balle balle", image: nil}
])
Release.create!([
  {movie_id: 1, format: "dvd", released_on: "2015-06-06"},
  {movie_id: 1, format: "theater", released_on: "2017-06-02"},
  {movie_id: 3, format: "dvd", released_on: "2016-09-05"},
  {movie_id: 4, format: "theater", released_on: "2019-06-05"}
])
Role.create!([
  {movie_id: 1, artist_id: 1, name: "actor"},
  {movie_id: 1, artist_id: 2, name: "actress"},
  {movie_id: 1, artist_id: 3, name: "goat"},
  {movie_id: 3, artist_id: 4, name: "actor"},
  {movie_id: 2, artist_id: 3, name: "actor"},
  {movie_id: 2, artist_id: 1, name: "dog"},
  {movie_id: 4, artist_id: 3, name: "actor"},
  {movie_id: 6, artist_id: 3, name: "actor"}
])
