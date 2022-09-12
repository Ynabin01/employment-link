@extends('layouts.master')

@section('content')
    @include('website.breadcrumb')
    <div class="inner-page-area sp-y-bottom">

        <div class="container">
            <div class="row">
                <div class="col-sm-8 @if ($normal->banner_image != null) @else col-sm-8 @endif">
                    <p>
                        @php echo $normal->short_content; @endphp
                    </p>
                </div>

                <div class="col-sm-4">
                    @if ($normal->banner_image != null)
                        <figure class="about-thumb">
                            <img src="{{ $normal->banner_image }}" alt="Employment-About" />
                        </figure>
                    @endif
                </div>
            </div>

            <p>
                @php echo $normal->long_content; @endphp
            </p>
        </div>
    </div>
@endsection
