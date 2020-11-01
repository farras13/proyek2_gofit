<section class="content-header">
    <h1>
        DETAIL MAHASISWA
        <small>Preview</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">General Elements</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <!-- right column -->
        <div class="col-md-8">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Data Detail untuk Mahasiswa <?php echo $row['namamhs']; ?></h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body no-padding">
                    <table class="table">

                        <tr>
                            <td>Nama</td>
                            <td>:</td>
                            <td><?php echo $row['namamhs']; ?></td>
                        </tr>
                        <tr>
                            <td>Alamat</td>
                            <td>:</td>
                            <td><?php echo $row['alamatmhs']; ?></td>
                        </tr>
                        <tr>
                            <td>No Telp</td>
                            <td>:</td>
                            <td><?php echo $row['notelp']; ?></td>
                        </tr>
                    </table>
                    <div class="box-footer">
                        <?php
                        echo anchor('mahasiswa', 'cancel', array('class' => 'btn btn-default'));
                        ?>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

        </div>
        <!--/.col (right) -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->