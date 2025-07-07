@extends('layouts.app')

@section('title')
    
 <title>{{$item->basic_page_title}}</title>

@endsection
    

@section('body')
    <section class="team p-1">
        <div class="uk-container">
            <div class="uk-margin-auto uk-margin-auto-vertical uk-width-3-5@s">
                <h2>{{$item->basic_page_title}}</h2>
                <p class="uk-margin-medium-bottom uk-text-center">{!!$item->basic_description!!}</p>
            </div>
            
            <div class="uk-grid uk-child-width-1-4@m uk-child-width-1-2@s uk-margin-medium-top uk-margin-xlarge-bottom">
                <h3>Executive Members</h3>
                 @foreach($executive as $team)
                <div class="team__wrap uk-margin-top">
                    <div class="team__photo">
                        <img src="{{Voyager::image($team->image)}}" alt="">
                    </div>
                    <div class="about__team">
                        <div class="desg">{{$team->designation}}</div>
                        <h4>{{$team->name}}</h5>
                        <span>{{$team->education}}</span>
                    </div>
                </div>
                @endforeach
                
            </div>
            <div class="uk-grid uk-child-width-1-4@m uk-child-width-1-2@s">
                <h3>Board of Directors</h3>
                @foreach($bod as $team)
                <div class="team__wrap uk-margin-top">
                    <div class="team__photo">
                        <img src="{{Voyager::image($team->image)}}" alt="">
                    </div>
                    <div class="about__team">
                        <div class="desg">{{$team->designation}}</div>
                        <h4>{{$team->name}}</h5>
                        <span>{{$team->education}}</span>
                    </div>
                </div>
                @endforeach
                
            </div>
            <div class="uk-grid uk-child-width-1-4@m uk-child-width-1-2@s">
                <h3>International Collaborators and Faculty</h3>
                @foreach($collabs as $team)
                <div class="team__wrap uk-margin-top">
                    <div class="team__photo">
                        <img src="{{Voyager::image($team->image)}}" alt="">
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