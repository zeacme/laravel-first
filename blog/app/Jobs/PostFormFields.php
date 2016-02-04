<?php

namespace App\Jobs;

use App\Jobs\Job;
use App\Post;
use App\Tag;
use Carbon\Carbon;
use Illuminate\Contracts\Bus\SelfHandling;

class PostFormFields extends Job implements SelfHandling
{
    protected $id;

    protected $fieldList = [
        'title' => '',
        'subtitle' => '',
        'page_image' => '',
        'content' => '',
        'meta_description' => '',
        'is_draft' => '',
        'publish_date' => '',
        'publish_time' => '',
        'layout' => 'blog.layouts.post',
        'tags' => []
    ];
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($id = null)
    {
        $this->id =$id;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $fields = $this->fieldList;

        if($this->id){
            $fields = $this->fieldsFromModel($this->id, $fields);
        }else{
            $when = Carbon::now()->addHour();
            $fields['publish_date'] = $when->format('M-j-Y');
            $fields['publish_time'] = $when->format('g:i A');
        }
        foreach($fields as $fieldName => $fieldValue){
            $fields[$fieldName] = old($fieldName, $fieldValue);
        }

        return array_merge(
            $fields,
            ['allTags'=> Tag::lists('tag')->all()]
        );
    }

    protected function fieldsFromModel($id, array $fields)
    {
        $post = Post::findOrFail($id);
        $fieldNames = array_keys(array_except($fields, ['tags']));

        $fields = ['id' => $id];
        foreach($fieldNames as $field){
            $fields[$field] = $post-> {$field};
        }
        $fields['tags'] = $post->tags()->lists('tag')->all();

        return $fields;
    }
}
