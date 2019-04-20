command: "sh ./nerdbar.widget/scripts/cpu.sh"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <div class="cpu"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".cpu span:first-child", el).text("  #{output}")
    $icon = $(".cpu span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bar-chart")

style: """
  -webkit-font-smoothing: antialiased
  color: #a3be8c
  font-family: Fira Code
  font-size: 14px
  left: 50px
  top: 5px
"""
