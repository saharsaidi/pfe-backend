<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    protected $fillable = [

        'nom_question',
        'reponse1',
        'reponse2', 'reponse3' , 'reponse4','reponse_juste'
        , 'test_id'



    ];
}
