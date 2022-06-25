<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
Use App\Models\User;
Use App\Models\Assistance;
Use App\Models\Poste;
Use App\Models\Occupation;


class SalarieController extends Controller
{
    public function getAll(){
        $data = User::all();
        return response()->json($data, 200);
      }

      public function create(Request $request){
        $exist_user = User::where('email' , $request['email'])->first();
        if($exist_user){
            return response()->json([
                'message' => "Utilisateur déjà existe",
                'success' => false
            ], 403);
        }else{
            $exist_phone = User::where('phone' , $request['phone'])->first();
            if($exist_phone){
                return response()->json([
                    'message' => "Numéro de téléphone déjà utilisé par un autre utilisateur",
                    'success' => false
                ], 403);
            }else{

                $data['name'] = $request['name'];
                $data['password'] =  bcrypt($request['password']) ;
                $data['adresse'] = $request['adresse'];
                $data['email'] = $request['email'];
                $data['phone'] = $request['phone'];
                $data['salaire'] = $request['salaire'];
                $data['role'] = $request['role'];
                $data['date_naissance'] = $request['date_naissance'];
                $data['image'] = $request['image'];
                User::create($data);
                return response()->json([
                    'message' => "Successfully created",
                    'success' => true
                ], 200);
            }
        }
      }

      public function delete($id_s){
        $res = User::find($id_s)->delete();
        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

      public function get($id_s){
        $data = User::find($id_s);
        return response()->json($data, 200);
      }

      public function update(Request $request,$id_s){
      /*   $data['nom_prenom'] = $request['nom_prenom'];
        $data['date_de_naissance'] = $request['date_de_naissance'];
        $data['adresse'] = $request['adresse'];
        $data['email'] = $request['email'];
        $data['phone'] = $request['phone'];
        $data['salaire'] = $request['salaire']; */
       User::find($id_s)->update($request->all());
       $user = User::find($id_s);
        return $user;
      }

      public function upload(Request $request){
        $path = $request->file('image')->store('utilisateurs');
        return ['path'=>$path];
    }


    public function statistiques(){
        $salaries = User::where('role' , 'salarie')->get()->count();
        $assistance = Assistance::all()->count();
        $postes = Poste::all()->count();
        $occuper = Occupation::all()->count();

        return ['salaries'=>$salaries   , 'assistance'=> $assistance , 'postes'=> $postes ,'occuper'=>$occuper];
    }
}
