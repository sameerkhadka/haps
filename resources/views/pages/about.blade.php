@extends('layouts.app')

@section('title')
    
    <title>{{$item->page_title}}</title>

@endsection
    

@section('body')   

    <div class="music-control">
        <div class="icon">
            <img src="{{asset('images/bw3I80awAa.gif')}}" alt="">
        </div>
        <div class="options">
            <a href="{{$item->video_link}}" target="_blank">watch video</a>
            <button id="play-pause-btn">Pause</button>
        </div>
    </div>
    <audio id="background-music" class="audio" loop>
        @if($item->audio_link && $item->audio_link != '[]')
            <source src="/storage/{{json_decode($item->audio_link)[0]->download_link}}" type="audio/mpeg">
        @endif
    </audio>


    <section class="home_intro p-1">
        <div class="uk-container">
            
            <div class="uk-text-center uk-margin-auto uk-margin-auto-vertical uk-width-3-5@s">
                {!!$item->description!!}
            </div>
        </div>
    </section>    


    <section class="mission p-12">
        <div class="uk-container">
            <div class="uk-grid">
                <div class="uk-width-1-3@s">
                    <h2>{{$item->mission_title}}</h2>
                    <p class="uk-padding-">{{$item->mission_text}}</p>
                </div>
                <div class="uk-width-2-3@s">
                    <div class="uk-grid uk-child-width-1-2@m">
                        @foreach($mission as $miss)
                        <div class="mission__wrap">
                            <div class="mission__icon">
                                <img src="{{Voyager::image($miss->image)}}" alt="">
                            </div>
                            <div class="mission__title">{{$miss->title}}</div>
                            <p>{{$miss->text}}
                            </p>
                        </div>
                        @endforeach
                    </div> 
                </div>
            </div>
        </div>
    </section>

    
    <section class="team p-1">
        <div class="uk-container">
            <div class="uk-margin-auto uk-margin-auto-vertical uk-width-3-5@s">
                <h2>{{$item->team_title}}</h2>
                <p class="uk-margin-medium-bottom uk-text-center">{{$item->team_text}}
                </p>
            </div>
            
            <div class="uk-grid uk-child-width-1-4@m uk-child-width-1-2@s">
                @foreach($teams as $team)
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


    <section class="home__gallery">
        <div class="homeGallery__wrap">
            @foreach($global_images as $img)
            <div class="homeGallery_image"><img src="{{Voyager::image($img->img)}}" alt=""></div>
            @endforeach
        </div>
    </section>
@endsection