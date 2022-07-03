<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Assistance;
use App\Models\Poste;
class AssisterController extends Controller
{
    //
    public function getAll(){
        $data = Assistance::with('user')->with('formation')->get();
        return response()->json($data, 200);
        //return $data;
        // return Assistance::all();
      }


      public function getByUserId($id){
        $data = Assistance::where('user_id' , $id)->with('formation')->get();
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


      public function statistique(){
        $months = ['Janvier' , 'Fevrier' , 'Mars' , 'Avril' , 'Mai' , 'Juin' , 'Juillet' , 'aout' , 'Sept' , 'Oct' , 'Nov' , 'Dec'];


        $labels = array();
        $valeurs = array();
        for ($i=1; $i <= 12; $i++) {
            $data = Assistance::whereMonth('created_at' , $i)->get()->count();
            array_push($labels , $months[$i-1]);
            array_push($valeurs , $data);
        }


        return ['labels'=>$labels , 'valeurs' => $valeurs];
      }

      public function updateScore(Request $request,$formation_id , $user_id){
        /*   $data['title'] = $request['title'];
          $data['description'] = $request['description'];
          $data['published'] = $request['published'];
     */
       $assist =  Assistance::where('formation_id' , $formation_id)->where('user_id' , $user_id)->first();
       if($assist){
            $assist->niveau = $request->input('niveau');
            $assist->score = $request->input('score');
            $assist->save();
            return $assist;
        }else{
            return response()->json(['message'=>'Assistance non existe' , 403]);
        }

        }

        public function getScore($formation_id , $user_id){
            $assist =  Assistance::where('formation_id' , $formation_id)->where('user_id' , $user_id)->first();
            return $assist;
        }
}
