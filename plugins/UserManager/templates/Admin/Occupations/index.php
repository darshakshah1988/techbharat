<?php
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface[]|\Cake\Collection\CollectionInterface $occupations
 */
?>
<?php $this->start('breadcrumb'); ?>
<div class="content-top-sec">
        <nav aria-label="breadcrumb">
          <?= $this->element('breadcrumb') ?>
        </nav>
        <h1>
            <?= __('Manage Occupation') ?>
        </h1>
        <small><?php echo __('Here you can manage the occupations'); ?></small>
</div>
<?php $this->end(); ?>
<div class="row occupations index content">

<div class="col-12 col-sm-12 col-md-12">
                <div class="panel-default">
                    <div class="panel-heading d-flex flex-wrap justify-content-between align-items-center">
                        <h2><?= __('Occupation') ?> List</h2>
                        <div class="d-flex flex-wrap"><?= $this->Html->link("<i class=\"fa fa-plus\"></i> " . __('New Occupation'), ["action" => "add"], ["class" => "btn btn-block btn-primary btn-sm btn-flat", "escape" => false]) ?></div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                              <thead>
                                <tr>
                                    <th>#</th>
                                    <th><?= $this->Paginator->sort('title') ?></th>
                                    <th><?= $this->Paginator->sort('status') ?></th>
                                    <th><?= $this->Paginator->sort('created') ?></th>
                        <th class="action-col">Action</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php if (!empty($occupations->toArray())):
                                    $i = ((($this->Paginator->param('page') - 1) * $this->Paginator->param('perPage')) + 1);
                                    foreach ($occupations as $occupation): ?>
                                 <tr>
                                    <td><?= $this->Number->format($i) ?>.</td>
                            <td><?= h($occupation->title) ?></td>


                                    <td>
                                    <?php if ($occupation->status == 1) {
                                            echo "Yes";
                                        }else{
                                            echo "No";
                                        }
                                    ?>
                                </td>

                                <td>
                             <?php if ($occupation->created) {
                                echo $occupation->created->format(\Cake\Core\Configure::read('Setting.ADMIN_DATE_TIME_FORMAT'));
                                }
                            ?>
                            </td>


                        <td class="action-col">
                <?= $this->Html->link("<i class=\"fa fa-fw fa-eye\"></i>", ['action' => 'view', $occupation->id],['class' => 'btn btn-block btn-warning btn-xs btn-flat', 'escape' => false,'data-toggle'=>'tooltip','alt'=>__('View occupation'),'title'=>__('View occupation')]) ?>

                <?= $this->Html->link("<i class=\"fa fa-edit\"></i>", ['action' => 'add', $occupation->id], ['class' => 'btn btn-block btn-success btn-xs btn-flat', 'escape' => false,'data-toggle'=>'tooltip','alt'=>__('Edit occupation'),'title'=>__('Edit occupation')]) ?>

                    <?= $this->Html->link("<i class=\"fa fa-trash\"></i>", ['action' => 'delete', $occupation->id], ['class' => 'confirmDeleteBtn btn btn-block btn-danger btn-xs btn-flat', 'data-url'=> $this->Url->build(['action' => 'delete', $occupation->id]), 'escape' => false,'data-toggle'=>'tooltip','alt'=>__('Delete occupation'),'title'=>__('Delete occupation')]) ?>
                    </td>
                </tr>
                                <?php $i++; endforeach; ?>
                            <?php else: ?>
                            <tr> <td colspan='5' align='center' class="tbodyNotFound" style="text-align:center;"> <strong>Record Not Available</strong> </td> </tr>
                            <?php endif; ?>
                              </tbody>
                            </table>
                        </div>
                        <div class="pagination-sec d-flex justify-content-between flex-wrap align-items-center">
                            <?php echo $this->element('pagination'); ?>
                        </div>
                    </div>
                </div>
            </div>
