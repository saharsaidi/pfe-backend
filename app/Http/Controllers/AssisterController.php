<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Assistance;
class AssisterController extends Controller
{
    //
    public function getAll(){
        $data = Assistance::with('user')->with('formation')->get();
        return response()->json($data, 200);
        //return $data;
        // return Assistance::all();
      }
      public function deleteAll(){

          Assistance::query()->delete();

          return response()->json([
              'message' => "Successfully deleted",
              'success' => true
          ], 200);
        }

      public function create(Request $request){
    /*     $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */

        Assistance::create($request->all());
        return response()->json([
            'message' => "Successfully created",
            'success' => true
        ], 200);
      }

      public function delete($id){
        $res = Assistance::find($id)->delete();
        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

      public function get($id){
        $data = Assistance::find($id);
        return response()->json($data, 200);
      }

      public function update(Request $request,$id){
      /*   $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */
        Assistance::find($id)->update($request->all());
        return response()->json([
            'message' => "Successfully updated",
            'success' => true
        ], 200);
      }
}