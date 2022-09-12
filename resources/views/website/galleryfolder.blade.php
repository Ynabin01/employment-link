@extends("layouts.master")

@section('content')
@include('website.breadcrumb')
@if(isset($photos))
<div class="gallery-folder sp-y-bottom">
    <div class="container">
        <div class="row">
            @foreach ($photos as $photo)
            <div class="col-md-3 col-sm-4">
                <a href="{{route('GOTOGALLERY',$photo->nav_name)}}">
                    <div class="folder">
                        <div class="folder-inside" style="background: url({{ $photo->banner_image }}) no-repeat; background-size: cover;"></div>
                    </div>
                    <h4>{{ $photo->caption }}</h4>
                </a>
            </div>  
            @endforeach
        </div> <!-- /.row -->
    </div> <!-- /.container -->
</div>
@endif

@endsection
