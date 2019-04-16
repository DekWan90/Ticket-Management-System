@extends('layouts.user')

@section('content')

<div class="card-body">

	<div class="form-group">
		<input type="text" class="form-controller" id="search" name="search"></input>
	</div>

	<h2 >All Tickets</h2><br>

	<!-- user can view their tickets -->

	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>Ticket ID</th>
				<th>Subject</th>
				<th>Description</th>
				<th>Status</th>
			</tr>
		</thead>

		<tbody>
			@foreach ($tickets as $ticket)
			<tr>
				<td><a  href="{{ url('viewTicketDetails/' . $ticket->id) }}">{{ $ticket->id }}</td>
					<td>{{ $ticket->subject }}</td>
					<td>{{ $ticket->description }}</td>
					<td>{{ $ticket->status }}</td>
				</tr>
				@endforeach
			</tbody>
		</table>


	</div>


	<script type="text/javascript">
	$('#search').on('keyup',function(){
		$value=$(this).val();
		$.ajax({
			type : 'get',
			url : '{{URL::to('search')}}',
			data:{'search':$value},
			success:function(data){
				$('tbody').html(data);
			}
		});
	})
	</script>
	<script type="text/javascript">
	$.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
	</script>


	@endsection
