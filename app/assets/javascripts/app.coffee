class Page
  _post = 1
  setPost: (id) ->
    $("#detail#{_post}").addClass "hidden"
    _post = parseInt id
    $(".status-bar").show()
    setTimeout ->
      $("#detail#{_post}").removeClass "hidden"
    , 1000
    setTimeout ->
      $(".status-bar").hide()
    , 1500
  getPost: ->
    return _post

page = new Page()

$ ->
  $("body").on "click", ".post", ->
    page.setPost $(@).attr("post")
    setTimeout ->
      $("#nav a.open-panel").text("×")
    , 300
    $("body").on "click", ->
      $("#nav a.open-panel").text("メニュー")
    $("#post-detail").on "click", ->
      setTimeout ->
        $("#nav a.open-panel").text("×")
      , 10
