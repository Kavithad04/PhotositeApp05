# frozen_string_literal: true
class LoadData < ActiveRecord::Migration[6.0]
  def change
    down
    user1 = User.new(first_name: "Sam", last_name: "Curran")
    user1.save(validate: false)

    user2 = User.new(first_name: "David",  last_name: "Hilton")
    user2.save(validate: false)

    user3 = User.new(first_name: "Pattinson",  last_name: "scott")
    user3.save(validate: false)

    user4 = User.new(first_name: "Russel", last_name: "peters")
    user4.save(validate: false)

    user5 = User.new(first_name: "Trevor", last_name: "noha")
    user5.save(validate: false)

    user6 = User.new(first_name: "Jhon", last_name: "Mccain")
    user6.save(validate: false)

    # Create initial photos.
    photo1 = Photo.new(date_time: "2020-07-30 09:44:23",
                       file_name: "Mountain.jpeg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Mountain.jpeg")
    photo1.user = user2
    photo1.save(validate: false)

    photo2 = Photo.new(date_time: "2017-03-13 20:00:00",
                       file_name: "Mountain2.jpg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Mountain2.jpg")
    photo2.user = user2
    photo2.save(validate: false)

    photo3 = Photo.new(date_time: "2020-01-01 20:05:03",
                       file_name: "Icecream1.jpeg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Icecream1.jpeg")
    photo3.user = user1
    photo3.save(validate: false)

    photo4 = Photo.new(date_time: "2020-12-20 18:02:00",
                       file_name: "Icecream2.jpg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Icecream2.jpg")
    photo4.user = user1
    photo4.save(validate: false)

    photo5 = Photo.new(date_time: "2020-01-20 17:30:00",
                       file_name: "Icecream3.jpg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Icecream3.jpg")
    photo5.user = user1
    photo5.save(validate: false)

    photo6 = Photo.new(date_time: "2009-07-10 16:02:49",
                       file_name: "Joey.jpeg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Joey.jpeg")
    photo6.user = user3
    photo6.save(validate: false)

    photo7 = Photo.new(date_time: "2010-03-18 23:48:00",
                       file_name: "Dog1.jpeg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Dog1.jpeg")

    photo7.user = user4
    photo7.save(validate: false)

    photo8 = Photo.new(date_time: "2010-08-30 14:26:00",
                       file_name: "Dog2.jpg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Dog2.jpg")
    photo8.user = user4
    photo8.save(validate: false)

    photo9 = Photo.new(date_time: "2013-12-03 09:02:00",
                       file_name: "Morning.jpeg",
                       file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Morning.jpeg")
    photo9.user = user5
    photo9.save(validate: false)

    photo10 = Photo.new(date_time: "2013-12-03 09:03:00",
                        file_name: "BreakFast.jpeg",
                        file_url: "https://mypics04.s3-us-west-2.amazonaws.com/BreakFast.jpeg")
    photo10.user = user5
    photo10.save(validate: false)


    photo11 = Photo.new(date_time: "2013-09-04 09:16:32",
                        file_name: "Beautiful view.jpg",
                        file_url: "https://mypics04.s3-us-west-2.amazonaws.com/Beautiful+view.jpg")
    photo11.user = user6
    photo11.save(validate: false)


    # Create initial comments.
    comment = Comment.new(date_time: "2012-09-02 14:01:00",
                          comment: "This is such a beautiful picture...")
    comment.user = user2
    comment.photo = photo1
    comment.save(validate: false)

    comment = Comment.new(date_time: "2013-09-06 14:02:00",
                          comment: "Beautiful Mountain")
    comment.user = user2
    comment.photo = photo2
    comment.save(validate: false)

    comment = Comment.new(date_time: "2013-09-08 14:06:00",
                          comment: "Was this icecream tasty???")
    comment.user = user6
    comment.photo = photo3
    comment.save(validate: false)

    comment = Comment.new(date_time: "2009-09-14 18:07:00",
                          comment: "Ice cream looks delicious")
    comment.user = user1
    comment.photo = photo4
    comment.save(validate: false)

    comment = Comment.new(date_time: "2013-11-28 17:45:13",
                          comment: "Did you made this icecream??")
    comment.user = user4
    comment.photo = photo5
    comment.save(validate: false)

    comment = Comment.new(date_time: "2013-11-02 14:07:00",
                          comment: "Your do is very cute")
    comment.user = user6
    comment.photo = photo6
    comment.save(validate: false)

    comment = Comment.new(date_time: "2013-11-02 14:07:00",
                          comment: "Beautiful Picture")
    comment.user = user1
    comment.photo = photo7
    comment.save(validate: false)

    comment = Comment.new(date_time: "2010-09-06 13:59:33",
                          comment: "He looks very cute")
    comment.user = user3
    comment.photo = photo8
    comment.save(validate: false)

    comment = Comment.new(date_time: "2013-10-16 18:04:55",
                          comment: "Hey look at my breakfast in London")
    comment.user = user3
    comment.photo = photo9
    comment.save(validate: false)

    comment = Comment.new(date_time: "2013-12-04 13:12:00",
                          comment: "Bright morning.")
    comment.user = user1
    comment.photo = photo10
    comment.save(validate: false)

    comment = Comment.new(date_time: "2013-09-04 10:14:32",
                          comment: "wow such an amazing pic")
    comment.user = user3
    comment.photo = photo11
    comment.save(validate: false)

  end

  def down
    Comment.delete_all
    Photo.delete_all
    User.delete_all
  end
end
