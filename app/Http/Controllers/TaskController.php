<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Task;
use Illuminate\Support\Facades\Auth;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource (with search, trashed, pagination)
     */
    public function index(Request $request)
    {
        $query = Task::where('user_id', $request->user()->id);
        if ($request->has('search')) {
            $search = $request->input('search');
            $query->where(function($q) use ($search) {
                $q->where('title', 'like', "%$search%")
                  ->orWhere('description', 'like', "%$search%")
                  ->orWhere('status', 'like', "%$search%") ;
            });
        }
        if ($request->has('trashed') && $request->trashed) {
            $query->onlyTrashed();
        }
        $tasks = $query->orderBy('created_at', 'desc')->paginate($request->get('per_page', 10));
        return response()->json($tasks);
    }

    /**
     * Store a newly created resource
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'status' => 'nullable|string',
        ]);
        $task = Task::create([
            'user_id' => $request->user()->id,
            'title' => $request->title,
            'description' => $request->description,
            'status' => $request->status ?? 'pending',
        ]);
        return response()->json(['message' => 'Task created', 'task' => $task], 201);
    }

    /**
     * Display the specified resource
     */
    public function show(Request $request, $id)
    {
        $task = Task::where('user_id', $request->user()->id)->findOrFail($id);
        return response()->json($task);
    }

    /**
     * Update the specified resource
     */
    public function update(Request $request, $id)
    {
        $task = Task::where('user_id', $request->user()->id)->findOrFail($id);
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'status' => 'nullable|string',
        ]);
        $task->update($request->only('title', 'description', 'status'));
        return response()->json(['message' => 'Task updated', 'task' => $task]);
    }

    /**
     * Remove the specified resource (soft delete)
     */
    public function destroy(Request $request, $id)
    {
        $task = Task::where('user_id', $request->user()->id)->findOrFail($id);
        $task->delete();
        return response()->json(['message' => 'Task deleted']);
    }

    /**
     * Force delete (permanently delete)
     */
    public function forceDelete(Request $request, $id)
    {
        $task = Task::withTrashed()->where('user_id', $request->user()->id)->findOrFail($id);
        $task->forceDelete();
        return response()->json(['message' => 'Task permanently deleted']);
    }

    /**
     * Restore soft deleted task
     */
    public function restore(Request $request, $id)
    {
        $task = Task::onlyTrashed()->where('user_id', $request->user()->id)->findOrFail($id);
        $task->restore();
        return response()->json(['message' => 'Task restored']);
    }
}
