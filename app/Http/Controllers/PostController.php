<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return $postList = Post::with(['categories'])->orderBy('id','DESC')->paginate(6);
        // return response()->json(['postList' => $postList],200);
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
        $this->formValidation($request);

        $file_url = '';
        if ($request->file != '') {
            $uploadPath = public_path('uploads/');
            $fileName = $request->file->getClientOriginalName();
            $fileExtention = $request->file->getClientOriginalExtension();
            $newFileName = time().'post'.'.'.$fileExtention;
            $file_url = $newFileName;
            $request->file->move($uploadPath,$newFileName);
        }

        $post = new Post();
        $post->category_id = $request->category_id;
        $post->title = $request->title;
        $post->description = $request->description;
        $post->file = $file_url;
        $post->slug = $request->slug;
        $post->save();
        return ['status'=>'success'];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post,$slug)
    {
        $getpostById = Post::with('categories')->where('slug',$slug)->get();
        return response()->json(['getpostById'=>$getpostById],200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post,$id)
    {
        $postById = Post::find($id);
       return response()->json(['postById'=>$postById],200);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post,$id)
    {
        //form validation
        $this->validate($request,[
            'category_id' => 'required',
            'title' => 'required',
            'description' => 'required',
            'slug' => 'required|unique:posts',
        ]);

        $post_info = Post::find($id);
        if ($request->newFile != '') {
            //delete preview image
            $previewFile  = public_path('uploads/').$request->file;
            unlink($previewFile);
            //upload New File
            $uploadPath = public_path('uploads/');
            $fileExtention = $request->newFile->getClientOriginalExtension();
            $newFileName = time().'post.'.$fileExtention;
            $request->newFile->move($uploadPath,$newFileName);
            $post_info->file = $newFileName;
        }
        $post_info->category_id = $request->category_id;
        $post_info->title = $request->title;
        $post_info->description = $request->description;
        $post_info->slug = $request->slug;
        $post_info->save();
        return ['status'=>'success'];

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post,$id)
    {

        $getFile = Post::find($id);
        if ($getFile->file != '') {
            $path = public_path('uploads/').$getFile->file;
            unlink($path);
        }
        Post::destroy($id);
        return ['status'=>'success'];
    }

    //form validation
    public function formValidation($request){
        $this->validate($request,[
            'category_id' => 'required',
            'title' => 'required',
            'description' => 'required',
            'file' => 'required',
            'slug' => 'required|unique:posts',
        ]);
    }
    //
    public function latestpost(){
        $latestpost = Post::take(5)->orderBy('id','DESC')->get();
        return response()->json(['latestpost'=>$latestpost],200);
    }

    //category wish post view
    public function categoryWishPostView($name){
         $cat = Category::where('name',$name)->first();
          $category_id= $cat->id;

        return $postList = Post::where('category_id',$category_id)->orderBy('id','DESC')->paginate(6);
    }
}
