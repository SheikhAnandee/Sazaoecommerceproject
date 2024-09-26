<?php
namespace App\Http\Controllers\Backend;

use App\DataTables\CategoryDataTable;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    public function index(CategoryDataTable $dataTable)
    {
        return $dataTable->render('admin.category.index');
    }

    public function create()
    {
        return view('admin.category.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'icon' => ['required', 'not_in:empty'],
            'name' => ['required', 'max:200', 'unique:categories,name'],
            'status' => ['required'],
        ]);

        $category = new Category();
        $category->icon = $request->icon;
        $category->name = $request->name;
        $category->slug = Str::slug($request->name);
        $category->status = $request->status;
        $category->save();

        toastr('Created Successfully', 'success');
        return redirect()->route('admin.category.index');
    }

    public function edit(string $id)
    {
        $category = Category::findOrFail($id);
        return view('admin.category.edit', compact('category'));
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'icon' => ['required', 'not_in:empty'],
            'name' => ['required', 'max:200', 'unique:categories,name,' . $id],
            'status' => ['required', 'boolean'],
        ]);

        $category = Category::findOrFail($id);
        $category->icon = $request->icon;
        $category->name = $request->name;
        $category->slug = Str::slug($request->name);
        $category->status = $request->status;
        $category->save();

        toastr('Updated Successfully', 'success');
        return redirect()->route('admin.category.index');
    }

    public function destroy(string $id)
    {
        $category = Category::findOrFail($id);
        $subCategory = SubCategory::where('category_id', $category->id)->count();

        if ($subCategory > 0) {
            return response (['status' => 'error', 'message' => 'This item contains sub-items. To delete the item, you have to delete the sub-items first!']);
        }

        $category->delete();
        return response (['status' => 'success', 'message' => 'Deleted Successfully!']);
    }

    public function changeStatus(Request $request)
    {
        $category = Category::findOrFail($request->id);
        $category->status = $request->status == 'true' ? 1 : 0;
        $category->save();
    
        return response (['status' => 'success', 'message' => 'Status has been updated!']);
    }
}
