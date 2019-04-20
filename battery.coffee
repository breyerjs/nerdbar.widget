command: "sh ./nerdbar.widget/scripts/battery.sh"

refreshFrequency: 15000 # ms

render: (output) ->
  """
  <div class="battery"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    bat = parseInt(output)
    $(".battery span:first-child", el).text("  #{output}")
    $icon = $(".battery span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(bat)}")

icon: (output) =>
  return if output > 90
    "fa-battery-full"
  else if output > 70
    "fa-battery-three-quarters"
  else if output > 40
    "fa-battery-half"
  else if output > 20
    "fa-battery-quarter"
  else
    "fa-battery-empty"

style: """
  -webkit-font-smoothing: antialiased
  font-size: 14px
  font-family: Fira Code
  top: 5px
  right: 450px
  color: #a3be8c
"""
