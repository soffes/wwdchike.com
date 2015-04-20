L.mapbox.accessToken = 'pk.eyJ1Ijoic29mZmVzIiwiYSI6IjFZZngwVDQifQ.2SwdR3e8-p_K50zm-hYwUg'

getWindowWidth = ->
  width = 0
  if document.body && document.body.offsetWidth
    width = document.body.offsetWidth;
  if document.compatMode == 'CSS1Compat' && document.documentElement && document.documentElement.offsetWidth
    width = document.documentElement.offsetWidth
  if window.innerWidth
    width = window.innerWidth
  return width

getZoom = ->
  if getWindowWidth() >= 620 then 13 else 12

map = L.mapbox.map('map', 'soffes.lpf1ja4k')
map.scrollWheelZoom.disable()
map.setView([37.795, -122.457], getZoom())

window.onresize = ->
  map.setZoom(getZoom())
