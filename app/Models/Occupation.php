<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Occupation extends Model
{
    use HasFactory;
    protected $fillable = [

        'user_id',
        'poste_id' , 'titre'];

        public function user(){
            return $this->belongsTo(User::class);
        }

        public function poste(){
            return $this->belongsTo(Poste::class);
        }
}
