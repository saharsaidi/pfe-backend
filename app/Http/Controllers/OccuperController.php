<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Occupation;
class OccuperController extends Controller
{
    //
    public function getAll(){
        $data = Occupation::with('user')->with('poste')->get();
        return response()->json($data, 200);
        //return $data;
        // return Occupation::all();
      }

      public function getByUserId($id){
      //  $data = Occupation::where('user_id' , $id)->join('postes' , 'postes.id' , 'occupations.poste_id')->get()

        // {poste_id : 1 , user_id : 2 , title : 'Angular developer ' , description : 'test test'}
        $data = Occupation::where('user_id' , $id)->with('poste')->get();

        //{ poste_id : 1 , user_id : 2 , poste : { title : 'angular developer' , description : 'test test'}}
        return response()->json($data, 200);

      }
      public function deleteAll(){

          Occupation::query()->delete();

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

        Occupation::create($request->all());
        return response()->json([
            'message' => "Successfully created",
            'success' => true
        ], 200);
      }

      public function delete($id){
        $res = Occupation::find($id)->delete();
        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

      public function get($id){
        $data = Occupation::find($id);
        return response()->json($data, 200);
      }

      public function update(Request $request,$id){
      /*   $data['title'] = $request['title'];
        $data['description'] = $request['description'];
        $data['published'] = $request['published'];
   */
        Occupation::find($id)->update($request->all());
        return response()->json([
            'message' => "Successfully updated",
            'success' => true
        ], 200);
      }
}
