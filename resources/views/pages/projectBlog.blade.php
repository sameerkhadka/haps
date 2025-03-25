@extends('layouts.app')

@section('title')   
    <title>{{$item->title}}</title>
@endsection
    

@section('body') 


    <section class="content__detail p-1">
        <div class="uk-container uk-container-small">
            <h1>{{$item->title}}</h1>
            @if($item->image)
            <img src="{{Voyager::image($item->image)}}" alt="">
            @endif
            <div class="main__content uk-margin-medium-top">
               {!!$item->description!!}
            </div>
        </div>
    </section>

    @endsection