$( document ).ready(function() {
	$.get('/api/items', function(data){
		$('#llista').append(data)
		$('#formulario').submit(function(event) {
			event.preventDefault();
			var formInput = $('#new_task').val();
			$.post('/api/items/new', {tasks : formInput}, function(){
				$.get('/api/items', function(data){
					$('#box').children('#llista').remove('#llista');
					$('#box').append( "<div id='llista'>" + data + "</div>" );
			});
		})
	});
	});
});