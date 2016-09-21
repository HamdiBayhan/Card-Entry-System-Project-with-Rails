# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	Morris.Line
		element: 'simulations_chart'
		data: $('#simulations_chart').data('simulations')
		xkey: 'created_at'
		ykeys: ['rate_use']
		labels: ['Günlük Kullanım']

	