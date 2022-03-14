<?php

namespace App\Http\Controllers;

use App\Models\Sidebar;
use Illuminate\Http\Request;

class SidebarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sidebardContent = Sidebar::find(1);
        return response()->json(['sidebardContent'=>$sidebardContent],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $side = new Sidebar();
        $side->link =$request->link;
        $side->icon =$request->icon;
        $side->save();
        return ['status=>success'];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Sidebar  $sidebar
     * @return \Illuminate\Http\Response
     */
    public function show(Sidebar $sidebar)
    {
        $sideIconList= Sidebar::skip(1)->take(8)->get();
        return response()->json(['sideIconList'=>$sideIconList],200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Sidebar  $sidebar
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request,$id)
    {
        $data= Sidebar::find($id);
        $data->icon=$request->icon;
        $data->link=$request->link;
        $data->save();
        return['status'=>'success'];
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Sidebar  $sidebar
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Sidebar $sidebar)
    {
        $data=Sidebar::find(1);
        if ($request->newFile != '') {
            //delete preview image
            $previewFile  = public_path('uploads/').$request->photo;
            unlink($previewFile);
            //upload New File
            $uploadPath = public_path('uploads/');
            $fileExtention = $request->newFile->getClientOriginalExtension();
            $newFileName = time().'sidebar.'.$fileExtention;
            $request->newFile->move($uploadPath,$newFileName);
            $data->photo = $newFileName;
        }
        $data->name =$request->name;
        $data->skill =$request->skill;
        $data->description =$request->description;
        $data->save();
        return ['status=>success'];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Sidebar  $sidebar
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sidebar $sidebar,$id)
    {
        Sidebar::destroy($id);
        return ['status'=>'success'];
    }
}
