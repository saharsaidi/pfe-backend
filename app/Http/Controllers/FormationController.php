<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Formation;
class FormationController extends Controller
{
    //
    public function getAll(){
        $data = Formation::with('theme')->orderby('date_debut' , 'desc')->with('salaries')->get();
        return response()->json($data, 200);
        //return $data;
        // return Formation::all();
      }
      public function deleteAll(){
          Formation::query()->delete();

          return response()->json([
              'message' => "Successfully deleted",
              'success' => true
          ], 200);
        }

      public function create(Request $request){

        Formation::create($request->all());
        return response()->json([
            'message' => "Successfully created",
            'success' => true
        ], 200);
      }

      public function delete($id){
        $res = Formation::find($id)->delete();
        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

      public function get($id){
        $data = Formation::where('id' , $id)->with('salaries')->with('theme')->first();
        return response()->json($data, 200);
      }

      public function update(Request $request,$id){
      /*   $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */
        Formation::find($id)->update($request->all());
        return response()->json([
            'message' => "Successfully updated",
            'success' => true
        ], 200);
      }


      public function upload(Request $request){
          $path = $request->file('image')->store('formations');
          return ['path'=>$path];
      }
}
