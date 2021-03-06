module FriendshipHelper
def friendship_status(user, friend)
friendship = Friendship.find_by_user_id_and_friend_id(user, friend)
 return "#{friend.profile.name} is not your friend (yet)." if friendship.nil?
     case friendship.status
        when 'requested'
            "#{friend.profile.name} would like to be your friend."
          when 'pending'
      "You have requested friendship from #{friend.profile.name}."
    when 'accepted'
    "#{friend.profile.name} is your friend."
 end
end 

def friend_link(user,friend)
  
  friendship = Friendship.find_by_user_id_and_friend_id(user, friend)
   return '0' if friendship.nil?
       case friendship.status
          when 'requested'
             return '1'
            when 'pending'
       return '2'
      when 'accepted'
      return '3'
   end

end

end