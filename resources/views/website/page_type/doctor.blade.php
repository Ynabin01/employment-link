@extends("layouts.master")
@section("content")

@include('website.page_type.banner')

<section class="sahid-team">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12  col-sm-12">

                <h2 class="section-title text-center">Our Specilists</h2>

            </div>
        </div>
        <div class="row">
            <!----start----->
            @foreach($doctors as $doctor)
                <div class="col-xl-3 col-md-6 col-sm-12">
                    <div class="box">
                        <figure>
                            <a href=""><img src="{{$doctor->banner_image}}" alt="" width="800" height="800"></a>
                        </figure>
                        <h4><a href="#">{{$doctor->caption}}</a></h4>
                        <span>ICU Expert</span>
                    </div>
                </div>
            @endforeach
            <!----end---->
        </div>
    </div>
</section>


@endsection
