<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Test;

class TestController extends Controller
{
       //
       public function getAll(){
        $data = Test::with('formation')->get();
        return response()->json($data, 200);
        //return $data;
        // return Test::all();
      }




      public function create(Request $request){
    /*     $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */

        Test::create($request->all());
        return response()->json([
            'message' => "Successfully created",
            'success' => true
        ], 200);
      }

      public function delete($id){
        $res = Test::find($id)->delete();
        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

      public function getByFormationId($formation_id){
        $data = Test::where('formation_id' , $formation_id)->with('questions')->with('formation')->first();

        return response()->json($data, 200);

      }

      public function get($id){
        $data = Test::where('id' , $id)->with('questions')->first();
        return response()->json($data, 200);
      }

      public function update(Request $request,$id){
      /*   $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */
        Test::find($id)->update($request->all());
        return response()->json([
            'message' => "Successfully updated",
            'success' => true
        ], 200);
      }
}
