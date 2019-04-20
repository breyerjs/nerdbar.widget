command: "sh ./nerdbar.widget/scripts/date.sh"

refreshFrequency: 10000

render: (output) ->
  """
  <div class="cal"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".cal span:first-child", el).text("  #{output}")
    $icon = $(".cal span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-calendar")

style: """
  -webkit-font-smoothing: antialiased
  color: #a3be8c
  font-size: 14px
  font-family: Fira Code
  right: 200px
  top: 5px
"""
