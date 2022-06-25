<?php

namespace App\Models;

use App\Models\Questions;
use App\Models\Formation;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    use HasFactory;

    protected $fillable = [

        'nom_test',
        'score_niv1',
        'score_niv2', 'score_niv3' , 'formation_id'



    ];
    public function questions(){
        return $this->hasMany(Question::class);
    }


    public function formation(){
        return $this->belongsTo(Formation::class);
    }
}
