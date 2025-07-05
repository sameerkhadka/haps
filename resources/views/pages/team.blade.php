@extends('layouts.app')

@section('title')
    
    <title>Hapsa Globe</title>

@endsection
    

@section('body')


    <section class="team p-1">
        <div class="uk-container">
            <div class="uk-margin-auto uk-margin-auto-vertical uk-width-3-5@s">
                <h2>{{$item->team_title}}</h2>
                <p class="uk-margin-medium-bottom uk-text-center">{{$item->team_text}}
                </p>
            </div>
            
            <div class="uk-grid uk-child-width-1-4@m uk-child-width-1-2@s">
                @foreach($team as $team)
                <div class="team__wrap uk-margin-top">
                    <div class="team__photo">
                        <img src="{{VOyager::image($team->image)}}" alt="">
                    </div>
                    <div class="about__team">
                        <div class="desg">{{$team->designation}}</div>
                        <h4>{{$team->name}}</h5>
                        <span>{{$team->education}}</span>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

@endsection