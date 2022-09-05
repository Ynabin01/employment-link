@extends('layouts.master')

@section('content')
    
@include('website.page_type.banner')

    <section class="team_one">
        <div class="container">
            <div class="row">
                @foreach($boardmembers as $boardmember)
                <div class="col-xl-3 col-lg-3 col-md-6">
                    <div class="team_one_single">
                        <a href="{{route('boardmemberdetail',$boardmember->id)}}">
                            <div class="team_one_image">
                                <img src="{{$boardmember->banner_image}}" alt="">
                            </div>
                            <div class="team_one_deatils">
                                <p>{{$boardmember->caption}}</p>
                                <h2>{{$boardmember->short_content}}</h2>
                            </div>
                        </a>
                    </div>
                </div>  
                @endforeach    
            </div>
        </div>
    </section>
  
@endsection
