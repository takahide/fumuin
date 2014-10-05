class Page
  _post = 1
  setPost: (id) ->
    $("#detail#{_post}").addClass "hidden"
    _post = parseInt id
    $("#detail#{_post}").removeClass "hidden"
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
