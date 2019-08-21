command: "sh ./nerdbar.widget/scripts/time.sh"


refreshFrequency: 20000 # ms

render: (output) ->
  """
  <div class="time"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".time span:first-child", el).text("  #{output}")
    $icon = $(".time span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-clock-o")

style: """
  -webkit-font-smoothing: antialiased
  color: #88c0d0
  font-size: 14px 
  font-family: Fira Code
  right: 50px
  top: 5px
"""
