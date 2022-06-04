<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Theme;
class ThemeController extends Controller
{
    //
    public function getAll(){
        $data = Theme::all();
        return response()->json($data, 200);
        //return $data;
        // return Theme::all();
      }
      public function deleteAll(){

          Theme::query()->delete();

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

        Theme::create($request->all());
        return response()->json([
            'message' => "Successfully created",
            'success' => true
        ], 200);
      }

      public function delete($id){
        $res = Theme::find($id)->delete();
        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

      public function get($id){
        $data = Theme::find($id);
        return response()->json($data, 200);
      }

      public function update(Request $request,$id){
      /*   $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */
        Theme::find($id)->update($request->all());
        return response()->json([
            'message' => "Successfully updated",
            'success' => true
        ], 200);
      }

    /*   public function findByTitle($title){
          $data = Poste::find($title);
          return response()->json($data, 200);
        } */

}
