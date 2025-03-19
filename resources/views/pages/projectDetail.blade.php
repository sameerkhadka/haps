@extends('layouts.app')

@section('title')   
    <title>{{$item->title}}</title>
@endsection
    

@section('body') 


    <section class="content__detail p-1">
        <div class="uk-container uk-container-small">
            <h1>{{$item->title}}</h1>
            <div class="date uk-text-center uk-margin-large-bottom">{{date('F d, Y',strtotime($item->date))}}</div>
            @if($item->quote)
            <div class="content__highlight">
                {{$item->quote}}
            </div>
            @endif
            @if($item->cover)
            <img src="{{Voyager::image($item->cover)}}" alt="">
            @endif
            <div class="main__content uk-margin-medium-top">
               {!!$item->description!!}
            </div>
        </div>
    </section>

    @endsection