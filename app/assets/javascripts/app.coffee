class Page
  _post = 1
  setPost: (id) ->
    $("#detail#{id} .video").each ->
      videoid = $(@).attr "videoid"
      $(@).html('<iframe width="250" height="150" src="//www.youtube.com/embed/' + videoid + '" frameborder="0" allowfullscreen></iframe>')
    $("#detail#{_post}").addClass "hidden"
    _post = parseInt id
    $(".status-bar").show()
    setTimeout ->
      $("#detail#{_post}").removeClass "hidden"
    , 1000
  getPost: ->
    return _post

page = new Page()

$ ->
  setTimeout ->
    myApp.popup('<div class="popup"></div>')
  , 1000

  $("body").on "click", ".post", ->
    page.setPost $(@).attr("post")
    setTimeout ->
      $("#nav a.open-panel").text("閉じる")
      $("#nav .nav-title").text("")
    , 300
    $("body").on "click", ->
      $("#nav .nav-title").text("踏む.韻")
      $("#nav a.open-panel").text("メニュー")
    $("#post-detail").on "click", ->
      setTimeout ->
        $("#nav a.open-panel").text("閉じる")
        $("#nav .nav-title").text("")
      , 5
