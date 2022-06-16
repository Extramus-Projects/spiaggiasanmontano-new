@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>{{ __('Spiaggia View Users') }}</h1>
    <hr>
    <div class="row">
        <div class="col-sm-12">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>{{ __('ID') }}</th>
                        <th>{{ __('Name') }}</th>
                        <th>{{ __('Email') }}</th>
                        <th>{{ __('Role') }}</th>
                        <th>{{ __('Created_at') }}</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                  @foreach ($users as $users)
                    <tr>
                        <td>{{ $users->id }}</td>
                        <td>{{ $users->name }}</td>
                        <td>{{ $users->email }}</td>
                        <td>{{ $users->role }}</td>
                        <td>{{ $users->created_at }}</td>
                        <td> <a href="{{ route('admin.users.edit', $users->id) }}">{{ _('Edit') }}</a>
                          @if (Auth::user()->email != $users->email)
                            / <a onclick="confirm('{{ __("Are you sure you want to delete this user?") }}')" href="{{ route('admin.users.delete', $users->id) }}" >{{ _('Delete') }}</a>
                          @endif
                        </td>
                    </tr>
                  @endforeach
                </tbody>
            </table>
        </div>
    </div>
  </div>
@endsection
