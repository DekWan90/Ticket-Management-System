@extends('layouts.login')

@section('content')
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">Dashboard</div>
				<div class="card-body">


					@foreach ($tickets as $ticket)
					#{{ $ticket->id }} - {{ $ticket->subject }} <br>

					Message : {{ $ticket->description }} <br>
					By : {{ $ticket->name }}<br>
					Posted on : {{ $ticket->created_at }}<br><br>



					<!-- fetch message -->

					



					<form method="POST" action="{{route('submit.message', $ticket->id)}}">
						{{ csrf_field() }}


						<label for="message">Message:</label>
						<textarea class="form-control" id="message" name="message" value="" ></textarea>
						<br>


						<button type="submit" class="btn btn-danger" value="Reply">Reply</button>
					</form> <br>




					<!-- closed ticket tak jadi lagi -->
					<form method="POST" action="{{route('submit.storeStatus', $ticket->id)}}">
						<input type="hidden" value="Closed" name="status"/>
						<button type="submit" class="btn btn-danger" value="Closed">Closed</button>

					</form>

					@endforeach

				</div>

			</div>
		</div>
	</div>
</div>
@endsection
