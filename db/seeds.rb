User.create!([
      {name: "bob"},
      {name: "joe"},
      {name: "steve"}])

Website.create!([
      {url: "www.facebook.com"},
      {url: "www.google.com"},
      {url: "www.wastetime.com"}])

Relation.create!([
      {user_id: 1, website_id: 1},
      {user_id: 1, website_id: 2, productive: true},
      {user_id: 1, website_id: 3},
      {user_id: 2, website_id: 1},
      {user_id: 2, website_id: 3},
      {user_id: 3, website_id: 1}])

Visit.create!([
      {relation_id: 3},
      {relation_id: 1},
      {relation_id: 2},
      {relation_id: 3},
      {relation_id: 4},
      {relation_id: 5},
      {relation_id: 6},
      {relation_id: 1},
      {relation_id: 2},
      {relation_id: 2},
      {relation_id: 2}])