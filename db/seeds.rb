thread_1 = TopThread.create(title: "Welcome", upvotes: 10000, content: "Welcome to my image/message board. Here you will be able to create threads, posts comments, upload images, and upvote posts and threads. Enjoy.")
thread_2 = TopThread.create(title: "Le Wagon", upvotes: 0, content: "Le Wagon is a 9 week intensive course on full-stack web developement")

post_1_1 = Post.create(content: "Hello!", upvotes: 10)
post_1_2 = Post.create(content: "Glad to be posting here", upvotes: 2)
post_1_3 = Post.create(content: "These are all test comments", upvotes: 1)

post_1_1.top_thread = thread_1
post_1_2.top_thread = thread_1
post_1_3.top_thread = thread_1

post_2_1 = Post.create(content: "This is indeed a course on web developement", upvotes: 2)
post_2_2 = Post.create(content: "As with before, this is a test comment", upvotes: 1)

post_2_1.top_thread = thread_2
post_2_2.top_thread = thread_2

post_1_1.save
post_1_2.save
post_1_3.save
post_2_1.save
post_2_2.save
