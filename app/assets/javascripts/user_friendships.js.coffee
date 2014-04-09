window.userFriendships = []
$(document).ready ->
  $.ajax
    url: Routes.user_friendships_path(format: "json")
    dataType: "json"
    type: "GET"
    success: (data) ->
      window.userFriendships = data
      return

  $("#add-friendship").click (event) ->
    event.preventDefault()
    addFriendshipBtn = $(this)
    $.ajax
      url: Routes.user_friendships_path(user_friendship:
        friend_id: addFriendshipBtn.data("friendId")
      )
      dataType: "json"
      type: "POST"
      success: (e) ->
        addFriendshipBtn.hide()
        $("#friend-status").html "<a href='#' class='btn btn-success'>Friendship Requested</a>"
        return

    return

  return
