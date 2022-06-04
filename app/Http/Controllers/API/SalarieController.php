<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
Use App\Models\Salarie;
Use Log;

class SalarieController extends Controller
{
    public function getAll(){
        $data = Salarie::get();
        return response()->json($data, 200);
      }

      public function create(Request $request){
        $data['nom_prenom'] = $request['nom_prenom'];
        $data['date_de_naissance'] = $request['date_de_naissance'];
        $data['adresse'] = $request['adresse'];
        $data['email'] = $request['email'];
        $data['phone'] = $request['phone'];
        $data['salaire'] = $request['salaire'];
        Salarie::create($data);
        return response()->json([
            'message' => "Successfully created",
            'success' => true
        ], 200);
      }

      public function delete($id_s){
        $res = Salarie::find($id_s)->delete();
        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

      public function get($id_s){
        $data = Salarie::find($id_s);
        return response()->json($data, 200);
      }

      public function update(Request $request,$id_s){
        $data['nom_prenom'] = $request['nom_prenom'];
        $data['date_de_naissance'] = $request['date_de_naissance'];
        $data['adresse'] = $request['adresse'];
        $data['email'] = $request['email'];
        $data['phone'] = $request['phone'];
        $data['salaire'] = $request['salaire'];
        Salarie::find($id_s)->update($data);
        return response()->json([
            'message' => "Successfully updated",
            'success' => true
        ], 200);
      }

}
