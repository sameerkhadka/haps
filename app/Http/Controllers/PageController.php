<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;
use App\Mission;
use App\Team;
use App\Project;
use App\News;
use App\PhotoGallery;
use App\VideoGallery;
use App\Resource;
use App\Volunteer;
use App\Donate;
use App\Homepage;

class PageController extends Controller
{
    public function index()
    {
        $data['item'] = Homepage::find(1);
        $data['projects'] = Project::orderBy('date','desc')->get()->except(1);
        $data['news'] = News::orderBy('date','desc')->get()->except(1);
        return view('pages.index', $data);
    }

    public function about()
    {
        $data['item'] = About::find(1);
        $data['mission'] = Mission::orderBy('order')->get();
        $data['teams'] = Team::orderBy('order')->get();
        return view('pages.about', $data);
    }
    
    public function project()
    {
        $data['item'] = Project::find(1);
        $data['projects'] = Project::orderBy('date','desc')->get()->except(1);
        return view('pages.projects', $data);
    }

    public function projectDetail($slug)
    {
        $data['item'] = Project::where('slug',$slug)->FirstOrFail();
        return view('pages.projectDetail', $data);
    }
    
    public function news()
    {
        $data['item'] = News::find(1);
        $data['news'] = News::orderBy('date','desc')->get()->except(1);
        return view('pages.news', $data);
    }

    public function newsDetail($slug)
    {
        $data['item'] = News::where('slug',$slug)->FirstOrFail();
        return view('pages.newsDetail', $data);
    }
    
    public function gallery()
    {
        $data['images'] = PhotoGallery::orderBy('order')->get();
        $data['videos'] = VideoGallery::orderBy('order')->get();
        return view('pages.gallery', $data);
    }
    
    public function volunteer()
    {
        $data['item'] = Volunteer::find(1);
        return view('pages.volunteer', $data);
    }
    
    public function donate()
    {
        $data['item'] = Donate::find(1);
        return view('pages.donate', $data);
    }
    
    public function resource()
    {
        $data['item'] = Resource::find(1);
        $data['resources'] = Resource::orderBy('order')->get()->except(1);
        return view('pages.resources', $data);
    }
    
    public function contact()
    {
        return view('pages.contact');
    }
}
