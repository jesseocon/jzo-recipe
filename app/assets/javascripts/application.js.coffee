#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require jquery-filepicker.js
#= require recipe_app
#= require recipes

ready = ->
  RA.recipes.ready()

$(document).ready(ready)
