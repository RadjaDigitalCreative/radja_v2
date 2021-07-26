@extends('layout.main')
@section('title', $title)
@section('content')
<!-- modal tambah bonus cuti -->
@foreach($cuti as $abs)

<div class="modal fade" id="staticBackdrop-{{$abs->id}}" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Nominal Cuti Jika Tidak Diambil</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action=" {{ route('cuti.nominal')}}" method="post" >
        @csrf
        <div class="modal-body">
          <div class="row">
            <label class="col-md-3 col-form-label">Masukkan Nominal</label>
            <div class="col-md-5">
              <div class="form-group">
                <input type="number" name="gaji" class="form-control" required="">
                <input type="hidden" name="user_id" value="{{$abs->user_id}}" class="form-control">
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-outline-success"><h5>Simpan dan Berikan</h5></button>

        </div>
      </form>
    </div>
  </div>
</div>
@endforeach

<div class="card ">
  <div class="card-header ">
    <h4 class="card-title">Setting Cuti Pegawai</h4>
  </div>
  <div class="card-body ">
    <form method="post" method="post" action="{{route('cuti.store')}}" class="form-horizontal">
      @csrf
      <div class="row">
        <label class="col-md-3 col-form-label">Nama</label>
        <div class="col-md-8">
          <div class="form-group">
            <select class=" form-control cari"   name="user_id">
              <option>-- Pilih Pegawai --</option>
              @foreach($user as $data)
              <option value="{{ $data->id }}">{{ $data->name }}</option>
              @endforeach
            </select>
          </div>
        </div>
      </div>
      
      <div class="row">
        <label class="col-md-3 col-form-label">Cuti Diberikan (hari)</label>
        <div class="col-md-8">
          <div class="form-group">
            <input type="number" name="hari" class="form-control" placeholder="Setting Cuti (hari)" required="">
          </div>
        </div>
      </div>
      <div class="row">
        <label class="col-md-3 col-form-label">Nominal Cuti</label>
        <div class="col-md-8">
          <div class="form-group">
            <input type="number" name="nominal" class="form-control" placeholder="Nominal Cuti Jika Tidak Diambil" required="">
          </div>
        </div>
      </div>

    </div>
    <div class="card-footer ">
      <div class="row">
        <label class="col-md-3"></label>
        <div class="col-md-9">
          <button type="reset" class="btn btn-fill btn-danger">Reset</button>
          <button type="submit" class="btn btn-fill btn-success">Masuk</button>
        </div>
      </div>
    </div>
  </form>
</div>

@if(auth()->user()->level == 'Owner' or auth()->user()->id_team == 1)
<div class="content mt-3">
  <div class="animated fadeIn">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <strong class="card-title">Pegawai Yang Dapat Cuti</strong>
          </div>
          <div class="card-body">
            <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama Pegawai</th>
                  <th>Nominal Cuti(tidak diambil)</th>
                  <th>Cuti Yang Diberikan</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                @php 
                $nomor =1;
                function rupiah($m)
                {
                  $rupiah = "Rp ".number_format($m,0,",",".").",-";
                  return $rupiah;
                }
                @endphp
                @foreach($cuti as $abs)
                
                <tr>
                  <td>{{$nomor++}}</td>
                  <td>{{$abs->name}}</td>
                  
                  @if($abs->gaji == NULL)
                  <td align="center">
                    <button type="button" data-toggle="modal" data-target="#staticBackdrop-{{$abs->id}}" class="btn btn-danger"><i class="now-ui-icons business_money-coins"></i> Nominal Cuti</button>
                  </td>
                  @else
                  <td>{{rupiah($abs->gaji)}}</td>
                  @endif
                  <td>{{$abs->hari}} hari</td>
                  <td align="center">
                    <form id="data-{{ $abs->id }}" action="{{route('cuti.destroy',$abs->id)}}" method="post">
                      {{csrf_field()}}
                      {{method_field('delete')}}
                    </form>
                    
                    <button type="submit" onclick="deleteRow( {{ $abs->id }} )" class="btn btn-outline-danger btn-sm remove"><i class="fa fa-trash"></i>&nbsp;Hapus</button>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div><!-- .animated -->
</div><!-- .content -->
@else
<div class="content mt-3">
  <div class="animated fadeIn">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <strong class="card-title">Tabel Cuti</strong>
          </div>
          <div class="card-body">
            <table id="table" class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama Pegawai</th>
                  <th>Tgl Mulai Cuti</th>
                  <th>Tgl Akhir Cuti</th>
                  <th>Nominal Cuti(tidak diambil)</th>
                  <th>Pengajuan Cuti</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                @php 
                $nomor =1;
                function rupiah($m)
                {
                  $rupiah = "Rp ".number_format($m,0,",",".").",-";
                  return $rupiah;
                }
                @endphp
                @foreach($cuti as $abs)
                <?php 
                $tgl_mulai = date( "l, d F Y", strtotime($abs->tgl_mulai_cuti));
                $tgl_akhir = date( "l, d F Y", strtotime($abs->tgl_akhir_cuti));
                ?>
                <tr>
                  <td>{{$nomor++}}</td>
                  <td>{{$abs->name}}</td>
                  
                  <td>{{$tgl_mulai}}</td>
                  <td>{{$tgl_akhir}}</td>
                  @if($abs->gaji == NULL)
                  <td align="center">
                    <button type="button" class="btn btn-danger"><i class="now-ui-icons business_money-coins"></i> Masih Menunggu Konfirmasi</button>
                  </td>
                  @else
                  <td>{{rupiah($abs->gaji)}}</td>
                  @endif
                  <td>{{$abs->hari}} hari</td>
                  <td align="center">
                    <form id="data-{{ $abs->id }}" action="{{route('cuti.destroy',$abs->id)}}" method="post">
                      {{csrf_field()}}
                      {{method_field('delete')}}
                    </form>
                    @if($abs->status == 0)
                    <button type="button" class="btn btn-outline-success btn-sm"><i class="fa fa-edit"></i>&nbsp;Approve</button>
                    @elseif($abs->status >= 1)
                    <button type="button" class="btn btn-outline-danger btn-sm"><i class="fa fa-edit"></i>&nbsp;Unapprove</button>
                    @endif
                    
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div><!-- .animated -->
</div><!-- .content -->
@endif
@section('script')
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
<script type="text/javascript">
  $('.cari').select2();
</script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/css/select2.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/js/select2.min.js"></script>
<script src="http://maps.googleapis.com/maps/api/js"></script>
@endsection
@endsection
