
 <?php
 $this->layout = "mycalendar";
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface $microSession
 */
//echo "<pre>";
//print_r($orders);
//die;

?>



<div class="new-header-style-1">
    <div class="container">
        <div class="col-sm-12 text-center">
            <h2>Calendar</h2>
            <p>Lorem ipsum dolor sit consectetur adipiscin sed do eiusmod</p>
        </div>
    </div>
</div>
<div class="GreyBg">
    <div class="container" style="width: 100%">
        <div class="col-md-2 nopadding MyCalSide">
            <h1>Upcoming Sessions</h1>
            <div class="col-md-12 box">
                <h2>22 November, 2021</h2>
                <p>Session on Maths</p>
                <h5>6:00 AM - 7:00 AM</h5>
                <p>Session on English</p>
                <h5>8:00 AM - 9:00 AM</h5>
                <p>Session on Hindi</p>
                <h5>106:00 AM - 11:00 AM</h5>                
            </div>
            <div class="col-md-12 box">
                <h2>23 November, 2021</h2>
                <p>Session on English</p>
                <h5>7:00 AM - 8:00 AM</h5>
                <p>Session on Maths</p>
                <h5>9:30 AM - 10:30 AM</h5>
                <p>Session on Physics</p>
                <h5>11:00 AM - 12:00 pM</h5>                              
            </div>
        </div>
        <div class="col-md-10 mb40">
            <div id='calendar'></div>
        </div>
    </div>
</div>
</div>
    <?php 
echo $this->Html->css(['fullcalendar.css','//fullcalendar.print.css'],['block' => true]);
echo $this->Html->script(['http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js','moment.min.js','micro/jquery.min.js','micro/fullcalendar.min.js','micro/bootstrap.min.js','micro/custom.js']);
 ?>
<script>
    <?php $this->Html->scriptStart(['block' => true]); ?>
    $(document).ready(function () {  
        $('#calendar').fullCalendar({
            defaultDate: '<?php echo date('Y-m-d') ?>',
            editable: true,
            eventLimit: true, // allow "more" link when too many events
            events: [
            <?php foreach($orders as $chap): 
                  if($chap->micro_session_chapters['id']){
                ?>

                {
                    id: <?php echo $chap->micro_session_chapters['id'] ?>,
                    title: '<?php echo $chap->micro_sessions['id'].'=>'.$chap->micro_session_chapters['start_time'].' '.$chap->micro_session_chapters['title'] ?>',
                    start: '<?php echo date('Y-m-d', strtotime($chap->micro_session_chapters['start_date'])) ?>',
                    end: '<?php echo date('Y-m-d', strtotime($chap->micro_session_chapters['end_date'])) ?>',
                },
                <?php }
            endforeach;?>

             <?php foreach($packageschapter as $pkg_chap): 
                  if($pkg_chap->micro_session_chapters['id']){
                ?>

                {
                    id: <?php echo $pkg_chap->micro_session_chapters['id'] ?>,
                    title: '<?php echo $pkg_chap->micro_sessions['id'].'+=>'. $pkg_chap->micro_session_chapters['start_time'].' '.$pkg_chap->micro_session_chapters['title'] ?>',
                    start: '<?php echo date('Y-m-d', strtotime($pkg_chap->micro_session_chapters['start_date'])) ?>',
                    end: '<?php echo date('Y-m-d', strtotime($pkg_chap->micro_session_chapters['end_date'])) ?>',
                },
                <?php }
            endforeach;?>
                
            ]
        });
    });
<?php $this->Html->scriptEnd(); ?>
</script>


