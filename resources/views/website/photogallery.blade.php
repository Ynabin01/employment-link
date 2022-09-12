@extends('layouts.master')

@section('content')
  @include('website.breadcrumb')
    <div class="gallery">
        <div class="container">
            <div class="gallery-view">
                <div class="row" id="lightgallery">
                    @foreach($photos as $photo)
                    <div class="item col-md-4" data-src="/uploads/photo_gallery/{{$photo->file}}" data-sub-html="{{$photo->caption}}"
                        data-sub-html="<h4>Employment Link</h4>">
                        <a href="">
                            <img src="/uploads/photo_gallery/{{$photo->file}}" data-sub-html="{{$photo->caption}}" alt="Employment Link" />
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
