@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                            <h1>Patients</h1>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Firstname</th>
                                    <th>Lastname</th>
                                    <th>Email</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Default</td>
                                    <td>Defaultson</td>
                                    <td>def@somemail.com</td>
                                </tr>
                                <tr class="success">
                                    <td>Success</td>
                                    <td>Doe</td>
                                    <td>john@example.com</td>
                                </tr>
                                <tr class="danger">
                                    <td>Danger</td>
                                    <td>Moe</td>
                                    <td>mary@example.com</td>
                                </tr>
                                <tr class="info">
                                    <td>Info</td>
                                    <td>Dooley</td>
                                    <td>july@example.com</td>
                                </tr>
                                <tr class="warning">
                                    <td>Warning</td>
                                    <td>Refs</td>
                                    <td>bo@example.com</td>
                                </tr>
                                <tr class="active">
                                    <td>Active</td>
                                    <td>Activeson</td>
                                    <td>act@example.com</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    @endif

                    You are logged in!
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
