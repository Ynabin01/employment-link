@extends("layouts.master")

@section('content')
@include('website.page_type.banner')

<section class="gallery_two">
    <div class="container">
        {{-- <div class="row">
            <div id="filter-id" class="col-md-12">
                <button type="button" class="btn btn-outline-black waves-effect filter active" data-rel="all">All</button>
                <button type="button" class="btn btn-outline-black waves-effect filter" data-rel="1">Event</button>
                <button type="button" class="btn btn-outline-black waves-effect filter" data-rel="2">picnic 2021</button>
                <button type="button" class="btn btn-outline-black waves-effect filter" data-rel="3">Team</button>
            </div>
        </div> --}}
        <div class="row" id="lightgallery">
			@foreach ($photos as $photo)		
		
				<div class="col-xl-4 col-lg-6 col-md-6 all 1">
					<div class="gallery_two_single">
						<div class="gallery_two_image">
							<img src="/uploads/photo_gallery/{{$photo->file}}" alt="">
							<div class="gallery_two_hover_box">
								<div class="gallery_two_icon">
									<a class="img-popup" href="/uploads/photo_gallery/{{$photo->file}}"><span class="icon-plus-symbol"></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>

		@endforeach
        </div>
    </div>
</section>
@endsection
