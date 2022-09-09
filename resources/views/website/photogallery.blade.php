@extends('layouts.master')

@section('content')
    <div class="gallery">
        <div class="container">
            <div class="gallery-view">
                <div class="row" id="lightgallery">
                    <div class="item col-md-4" data-src="website/images/gallery-pic.png"
                        data-sub-html="<h4>Employment Link</h4>">
                        <a href="">
                            <img src="website/images/gallery-pic.png" alt="Employment Link" />
                        </a>
                    </div>
                    <div class="item col-md-4" data-src="website/images/gallery-pic-1.png"
                        data-sub-html="<h4>Employment Link</h4>">
                        <a href="">
                            <img src="website/images/gallery-pic-1.png" alt="Employment Link" />
                        </a>
                    </div>
                    <div class="item col-md-4" data-src="website/images/gallery-pic-4.png"
                        data-sub-html="<h4>Employment Link</h4>">
                        <a href="">
                            <img src="website/images/gallery-pic-4.png" alt="Employment Link" />
                        </a>
                    </div>
                    <div class="item col-md-4" data-src="website/images/gallery-pic-3.png"
                        data-sub-html="<h4>Employment Link</h4>">
                        <a href="">
                            <img src="website/images/gallery-pic-3.png" alt="Employment Link" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
