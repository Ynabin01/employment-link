@extends('layouts.master')

@section('content')
    @include('website.page_type.banner')

    <section class="news-event">
        <div class="container">
            <div class="row align-items-center">
              @foreach ($notices  as  $notice)
                    <div class="col-md-6">
                        <div class="news-list">
                            <ul>
                                <li><a href="/{{$slug_detail->nav_name}}/{{$notice->nav_name ?? ''}}">{{$notice->caption ?? ''}}</a></li>                           
                            </ul>
                        </div>
                    </div>
               @endforeach           
           </div>
        </div>
    </section>
@endsection