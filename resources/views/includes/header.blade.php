    <header uk-sticky="show-on-up: true; animation: uk-animation-slide-top" class="header uk-sticky" >
        <nav uk-dropnav delay-hide="400ms" class="uk-navbar-container uk-navbar-transparent uk-visible@m">
            <div class="uk-container uk-container-xlarge">
                <div uk-navbar="" class="uk-navbar">

                    <div class="uk-navbar-left">
                        
                        <ul class="uk-subnav">
                            <li>
                                <a href="/" class="uk-navbar-item uk-logo">
                                    <img class="full" src="{{Voyager::image(setting('site.logo'))}}" alt="{{setting('site.title')}}">
                                </a>
                            </li>
                            <li @if(!Request::segment(1)) class="uk-active" @endif><a href="/">Home</a></li>
                            <li @if(Request::segment(1) == 'about' || Request::segment(1) == 'news' || Request::segment(1) == 'gallery' || Request::segment(1) == 'volunteer') class="uk-active" @endif>
                                <a href>About <span uk-drop-parent-icon></span></a>
                                <div class="uk-dropdown">
                                    <ul class="uk-nav uk-dropdown-nav">
                                        <li><a href="/about" >About Us</a></li>
                                        <li><a href="/news" >News </a></li>
                                        <li><a href="/gallery#photo">Photo Gallery</a></li>
                                        <li><a href="/gallery">Video Gallery</a></li>
                                        <li><a href="/team" >Team </a></li>
                                        <li><a href="/volunteer#faqs">FAQ</a></li>
                                    </ul>
                                </div>
                            </li>
                            @foreach($global_project as $pro)
                            <li @if(Request::segment(2) && collect($pro->projects)->pluck('slug')->contains(Request::segment(2))) class="uk-active" @endif >
                                <a href>{{$pro->title}}<span uk-drop-parent-icon></span></a>
                                <div class="uk-dropdown">
                                    @if($pro->id == 4)
                                    <ul class="uk-nav uk-dropdown-nav">
                                        @foreach($pro->projects as $item)
                                        @if($item->other_projects != 1)
                                        <li><a href="/projects/{{$item->slug}}" >{{$item->title}}</a></li>
                                        @endif
                                        @endforeach
                                        <li><a href="/other-projects" >Other Projects</a></li>
                                    </ul>  
                                    @else
                                    <ul class="uk-nav uk-dropdown-nav">
                                        @foreach($pro->projects as $item)
                                        <li><a href="/projects/{{$item->slug}}" >{{$item->title}}</a></li>
                                        @endforeach
                                    </ul>    
                                    @endif               
                                </div>
                            </li>   
                            @endforeach
                            
                        </ul>

                    </div>

                    <div class="uk-navbar-center uk-visible@m">

                        <ul class="uk-navbar-nav">
                            
                        </ul>

                    </div>

                    <div class="uk-navbar-right">
                        <div class="cta">
                            <a href="/donate" class="btn">Donate</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="header__mobile uk-hidden@m">
            <div class="uk-container">
                <div class="uk-navbar-container">
                    <nav uk-navbar="" class="uk-navbar">
                        <div class="uk-navbar-left">
                            <a href="/" class="uk-navbar-item uk-logo">
                                <img src="{{Voyager::image(setting('site.logo'))}}">
                            </a>
                        </div>
                        <div class="uk-navbar-right">
                            <!-- <a href="{{setting('contact-us.facebook')}}" class="uk-navbar-item" target="_blank">
                                <span uk-icon="icon: facebook" class="uk-icon"></span>
                            </a>
                            <a href="{{setting('contact-us.youtube')}}" class="uk-navbar-item" target="_blank">
                                <span uk-icon="icon: youtube" class="uk-icon"></span>
                            </a>
                            <a href="{{setting('contact-us.instagram')}}" class="uk-navbar-item" target="_blank">
                                <span uk-icon="icon: instagram" class="uk-icon"></span>
                            </a> -->
                            <a class="uk-navbar-item uk-navbar-toggle" href="#header__mobile" uk-toggle="" aria-expanded="false">
                              <div uk-navbar-toggle-icon="" class="uk-icon uk-navbar-toggle-icon"></div>
                            </a>
                            <div class="cta">
                                <a href="/donate" class="btn">Donate</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div id="header__mobile" uk-offcanvas="" mode="slide" overlay="" class="uk-offcanvas">
              <div class="uk-offcanvas-bar">
                <button class="uk-offcanvas-close uk-icon uk-close" type="button" uk-close=""></button>
                <div class="uk-panel uk-margin-medium-top">
                    <ul uk-dropnav delay-hide="400ms" class="uk-nav">
                        
                        <li><a href="/">Home</a></li>
                        <li>
                            <a href="">About <span uk-drop-parent-icon></span></a>
                            <div class="uk-dropdown uk-drop">
                                <ul class="uk-nav uk-dropdown-nav">
                                    <li><a href="/about" >About Us</a></li>
                                    <li><a href="/news" >News Coverage</a></li>
                                    <li><a href="/galleryy#photo" >Photo Gallery</a></li>
                                    <li><a href="/gallery" >Video Gallery</a></li>
                                    <li><a href="/team" >Team </a></li>
                                    <li><a href="/volunteer#faqs">FAQ</a></li>
                                </ul>
                            </div>
                        </li>
                        @foreach($global_project as $pro)
                            <li>
                                <a href="">{{$pro->title}}<span uk-drop-parent-icon></span></a>
                                <div uk-dropdown="mode: click" class="uk-navbar-dropdown uk-drop">
                                    @if($pro->id == 4)
                                    <ul class="uk-nav uk-dropdown-nav">
                                        @foreach($pro->projects as $item)
                                        @if($item->other_projects != 1)
                                        <li><a href="/projects/{{$item->slug}}" >{{$item->title}}</a></li>
                                        @endif
                                        @endforeach
                                        <li><a href="/other-projects" >Other Projects</a></li>
                                    </ul>  
                                    @else
                                    <ul class="uk-nav uk-dropdown-nav">
                                        @foreach($pro->projects as $item)
                                        <li><a href="/projects/{{$item->slug}}" >{{$item->title}}</a></li>
                                        @endforeach
                                    </ul>    
                                    @endif               
                                </div>
                            </li>   
                        @endforeach
                    </ul>
                </div>
              </div>
            </div>
          </div>
    </header>