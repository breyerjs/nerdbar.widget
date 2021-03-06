command: "sh ./nerdbar.widget/scripts/network_name.sh"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <span class="wifi"></span>
  <div class="network"</div>
  """

update: (output, el) ->
    $(".network", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #EBCB8B
  font-size: 14px
  font-family: Fira Code
  left: 250px
  top: 5px
  .wifi
    font: 14px FontAwesome
    top: 1px
    position: relative
    left: 10px
"""
#