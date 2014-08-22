first = Post.create({title: "Pardoned", description: "How kind of the queen to pardon me", author: "AlanTuring"})
second = Post.create({title: "Passing", description: "Nobody passes, and I'm the virus in the system", author: "Mattilda"})

first.comments.create({commenter: "jane", body: "how wonderful indeed! high time you were pardoned"})
first.comments.create({commenter: "stuffy", body: "I don't know, I would have waited a few more decades"})

second.comments.create({commenter: "sydney", body: "I don't get it. Is that like ebola?"})
second.comments.create({commenter: "jane", body: "no, it's a meta kind of thing, I think"})
second.comments.create({commenter: "mattilda", body: "I'm surrounded by amateurs!"})


#comment = Comment.create({title: "Darkside!", body: "give into your anger"})
#vader.comments << comment