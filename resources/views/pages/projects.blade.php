@extends('layouts.app')

@section('title')
    
    <title>{{$item->basic_page_title}}</title>

@endsection
    

@section('body') 


    <section class="non banner" style="background-image: url('{{Voyager::image($item->basic_banner)}}')">
        <div class="overlay"></div>
        <div class="uk-container">
            <div class="bannerText">
                <div class="text">
                    <ul class="breadcrumb uk-flex">
                        <li>
                            <a href="/">Home</a>
                            <span uk-icon="icon: chevron-right"></span>
                        </li>
                        <li>
                            Projects
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>


    <section class="homeHapsaProjects p-1">
        <div class="uk-container">
            {!!$item->basic_description!!}
            <div class="projectsSlider__wrap">
                <div class="uk-grid uk-child-width-1-3@m uk-child-width-1-2@s home__projects">
                    @foreach($projects as $project)
                    <div class="uk-transition-toggle">  
                        <div class="project__card">
                            <div class="projectCard__image">
                                <img src="{{Voyager::image($project->cover)}}">
                            </div>
                            <div class="uk-panel">
                                <div class="uk-position-small uk-position-bottom uk-overlay sliderText">
                                    <h4>{{$project->title}}</h4>
                                    <div class="cta">
                                        <div class="inCard">
                                            <a href="/projects/{{$project->slug}}">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>


@endsection