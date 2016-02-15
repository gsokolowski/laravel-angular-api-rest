<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

/** Model*/
use App\Joke;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class JokesController extends Controller
{

	public function __construct(){
        //$this->middleware('auth.basic', ['only' => 'store']);
        $this->middleware('jwt.auth');
    }

    public function index(Request $request)
    {
        $search_term = $request->input('search');
        $limit       = $request->input('limit') ? $request->input('limit') : 5;

        if ($search_term) {
            $jokes = Joke::orderBy('id', 'DESC')->where('body', 'LIKE', "%$search_term%")->with(
                array('User' => function ($query) {
                    $query->select('id', 'name');
                })
            )->select('id', 'body', 'user_id')->paginate($limit);

            $jokes->appends(array(
                'search' => $search_term,
                'limit'  => $limit,
            ));
        } else {
            $jokes = Joke::orderBy('id', 'DESC')->with(
                array('User' => function ($query) {
                    $query->select('id', 'name');
                })
            )->select('id', 'body', 'user_id')->paginate($limit);

            $jokes->appends(array(
                'limit' => $limit,
            ));
        }

        return response($this->transformCollection($jokes), 200);
    }

    /**
    Basic Way
    public function show($id)
    {
    $joke = Joke::find($id);

    if (!$joke) {
    return response(['error' => ['message' => 'Joke does not exist']], 404);
    }
    return response(['data' => $this->transform($joke)], 200);
    }
     */

    public function show($id)
    {
        $joke = Joke::with(
            array('User' => function ($query) {
                $query->select('id', 'name');
            })
        )->find($id);

        if (!$joke) {
            return response(['error' => ['message' => 'Joke does not exist']], 404);
        }

        // get previous joke id
        $previous = Joke::where('id', '<', $joke->id)->max('id');

        // get next joke id
        $next = Joke::where('id', '>', $joke->id)->min('id');

        return response([
            'previous_joke_id' => $previous,
            'next_joke_id'     => $next,
            'data'             => $this->transform($joke),
        ], 200);
    }

    public function store(Request $request)
    {

        if (!$request->body or !$request->user_id) {
            return response([
                'error' => [
                    'message' => 'Please Provide Both body and user_id',
                ],
            ], 422);
        }
        $joke = Joke::create($request->all());

        return response([
            'message' => 'Joke Created Succesfully',
            'data'    => $this->transform($joke),
        ]);
    }

    public function update(Request $request, $id)
    {
        if (!$request->body or !$request->user_id) {
            return response([
                'error' => [
                    'message' => 'Please Provide Both body and user_id',
                ],
            ], 422);
        }

        $joke          = Joke::find($id);
        $joke->body    = $request->body;
        $joke->user_id = $request->user_id;
        $joke->save();

        return response([
            'message' => 'Joke Updated Succesfully',
        ]);
    }

    public function destroy($id)
    {
        Joke::destroy($id);
        return response([
            'message' => 'Joke Deleted Succesfully',
        ]);
    }

    /**
     * we can transform the data before displaying
     * array_map($this->transform(), $data); => This doesn't work
     * @var array
     */
    private function transformCollection($jokes)
    {
        /*
         * This doesn't work
        array_map($this->transform(), $data);
         */
        //return array_map([$this, 'transform'], $jokes->toArray());
        $jokesArray = $jokes->toArray();
        return [
            'total'         => $jokesArray['total'],
            'per_page'      => intval($jokesArray['per_page']),
            'current_page'  => $jokesArray['current_page'],
            'last_page'     => $jokesArray['last_page'],
            'next_page_url' => $jokesArray['next_page_url'],
            'prev_page_url' => $jokesArray['prev_page_url'],
            'from'          => $jokesArray['from'],
            'to'            => $jokesArray['to'],
            'data'          => array_map([$this, 'transform'], $jokesArray['data']),
        ];
    }

    private function transform($joke)
    {
        return [
            'joke_id'      => $joke['id'],
            'joke'         => $joke['body'],
            'submitted_by' => $joke['user']['name'],
        ];
    }
}
