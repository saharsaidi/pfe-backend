<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;
class QuestionController extends Controller
{
    //
    public function getAll($test_id){
        $data = Question::where('test_id' , $test_id)->get();
        return response()->json($data, 200);
        //return $data;
        // return Question::all();
      }




      public function create(Request $request){
    /*     $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */

        Question::create($request->all());
        return response()->json([
            'message' => "Successfully created",
            'success' => true
        ], 200);
      }

      public function delete($id){
        $res = Question::find($id)->delete();
        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

      public function get($id){
        $data = Question::where('id' , $id)->first();
        return response()->json($data, 200);
      }

      public function update(Request $request,$id){
      /*   $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */
        Question::find($id)->update($request->all());
        return response()->json([
            'message' => "Successfully updated",
            'success' => true
        ], 200);
      }
}
