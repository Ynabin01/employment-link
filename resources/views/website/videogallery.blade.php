@extends('layouts.master')

@section('content')
  @include('website.breadcrumb')
    <div class="video-gallery-area sp-y-bottom">
        <div class="container">
            <div class="row">
                @foreach ($photos as $photo)
                    <div class="col-md-4 col-sm-6">
                        <div class="video-item">
                            <iframe width="100%" height="315" src="{{ $photo->link }}" title="YouTube video player"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
