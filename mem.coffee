command: "sh ./nerdbar.widget/scripts/mem.sh"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <div class="mem"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".mem span:first-child", el).text("  #{output}")
    $icon = $(".mem span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-hdd-o")

style: """
  -webkit-font-smoothing: antialiased
  color: #a3be8c
  font-size: 14px
  font-family: Fira Code
  left: 150px
  top: 5px
"""
