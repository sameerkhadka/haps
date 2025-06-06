@extends('layouts.app')

@section('title')   
    <title>{{$item->title}}</title>
@endsection
    

@section('body') 


    <section class="content__detail p-1">
        <div class="uk-container uk-container-small">
            <h1>{{$item->title}}</h1>
            @if($item->date)
            <div class="date uk-text-center uk-margin-large-bottom">{{date('F d, Y',strtotime($item->date))}}</div>
            @endif
            @if($item->quote)
            <div class="content__highlight">
                {{$item->quote}}
            </div>
            @endif
            @if($item->cover)
            <img src="{{Voyager::image($item->cover)}}" alt="{{$item->cover_title}}">
            <!-- Caption ko cover --><p> {{$item->cover_title}} </p>
            @endif
            <div class="main__content uk-margin-medium-top">
               {!!$item->description!!}
               @foreach($blogs as $blog)
               <div class="sub__content uk-margin-medium-top">
                    <div class="uk-grid">
                            <div class="uk-width-2-3@m">
                                <h3>{{$blog->title}}</h3>
                                <p>
                                    {{strip_tags($blog->description)}}
                                </p>
                                <div class="cta">
                                    <div class="inCard dark">
                                        <a href="{{$blog->link ?? '/project-blog/'.$blog->id}}" target="blank">Explore</a>
                                    </div>
                                </div>
                            </div>
                            <div class="uk-width-1-3@m">
                                <img src="{{Voyager::image($blog->image)}}" alt="">
                            </div>
                    </div>
               </div>
               @endforeach
            </div>

            @if($item->gallery || $item->galley!=[])
            <div class="projectGallery_slider uk-margin-medium-top uk-position-relative">
                <div class="swiper projectsGallery uk-margin">
                    <div class="swiper-wrapper">
                        @foreach(json_decode($item->gallery) as $img)
                        <div class="swiper-slide">
                            <div class="projectsGallery__image">
                                <img src="{{Voyager::image($img)}}">
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-button-prev projectsGallerynav"></div>
                <div class="swiper-button-next projectsGallerynav"></div>
            </div>
            @endif
        </div>
    </section>

    @if(count($resources) >0)
    <section class="resources p-12 uk-margin-bottom">
        <div class="uk-container">
            <h2>Resources and Publications</h2>
            <div class="resources_card uk-margin-medium-top">
                <div class="uk-grid uk-child-width-1-3@m uk-child-width-1-2@s">
                    @foreach($resources as $res)
                    <div class="uk-transition-toggle">  
                        <div class="project__card">
                            <div class="projectCard__image">
                                <img src="{{$res->image ? Voyager::image($res->image) : '/images/document.jpg'}}">
                            </div>
                            <div class="uk-panel">
                                <div class="uk-position-small uk-position-bottom uk-overlay cardTitle">
                                    <h5>{{$res->title}}</h5>
                                    <div class="cta">
                                        <div class="inCard">
                                            @if($res->link)
                                                <a href="{{$res->link }}" target="blank">Explore</a>
                                            @elseif($res->file != null && $res->file != '[]')
                                                <a href="{{'/storage/'.json_decode($res->file)[0]->download_link }}" target="blank">Explore</a>
                                            @else
                                                <a href="#" target="blank">Explore</a>
                                            @endif
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
    @endif

    @if(Request::segment(2) == 'cpr-training')
    <section class="popupSection">
        <button class="uk-button uk-button-default uk-margin-small-right" type="button" uk-toggle="target: #modal-example">Total Registered Doctors</button>

        <div id="modal-example" uk-modal>
            <div class="uk-modal-dialog">
                <img src="{{asset('images/table.png')}}" alt="">
            </div>
        </div>
    </section>
    @endif

    @endsection