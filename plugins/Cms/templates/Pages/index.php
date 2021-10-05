<?php
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface[]|\Cake\Collection\CollectionInterface $pages
 */
?>
<div class="pages index content">
    <?= $this->Html->link(__('New Page'), ['action' => 'add'], ['class' => 'button float-right']) ?>
    <h3><?= __('Pages') ?></h3>
    <div class="table-responsive">
        <table>
            <thead>
                <tr>
                    <th><?= $this->Paginator->sort('id') ?></th>
                    <th><?= $this->Paginator->sort('listing_id') ?></th>
                    <th><?= $this->Paginator->sort('title') ?></th>
                    <th><?= $this->Paginator->sort('sub_title') ?></th>
                    <th><?= $this->Paginator->sort('slug') ?></th>
                    <th><?= $this->Paginator->sort('short_description') ?></th>
                    <th><?= $this->Paginator->sort('banner') ?></th>
                    <th><?= $this->Paginator->sort('banner_dir') ?></th>
                    <th><?= $this->Paginator->sort('banner_size') ?></th>
                    <th><?= $this->Paginator->sort('banner_type') ?></th>
                    <th><?= $this->Paginator->sort('meta_title') ?></th>
                    <th><?= $this->Paginator->sort('meta_keyword') ?></th>
                    <th><?= $this->Paginator->sort('status') ?></th>
                    <th><?= $this->Paginator->sort('created') ?></th>
                    <th><?= $this->Paginator->sort('modified') ?></th>
                    <th class="actions"><?= __('Actions') ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($pages as $page): ?>
                <tr>
                    <td><?= $this->Number->format($page->id) ?></td>
                    <td><?= $page->has('listing') ? $this->Html->link($page->listing->title, ['controller' => 'Listings', 'action' => 'view', $page->listing->id]) : '' ?></td>
                    <td><?= h($page->title) ?></td>
                    <td><?= h($page->sub_title) ?></td>
                    <td><?= h($page->slug) ?></td>
                    <td><?= h($page->short_description) ?></td>
                    <td><?= h($page->banner) ?></td>
                    <td><?= h($page->banner_dir) ?></td>
                    <td><?= $this->Number->format($page->banner_size) ?></td>
                    <td><?= h($page->banner_type) ?></td>
                    <td><?= h($page->meta_title) ?></td>
                    <td><?= h($page->meta_keyword) ?></td>
                    <td><?= h($page->status) ?></td>
                    <td><?= h($page->created) ?></td>
                    <td><?= h($page->modified) ?></td>
                    <td class="actions">
                        <?= $this->Html->link(__('View'), ['action' => 'view', $page->id]) ?>
                        <?= $this->Html->link(__('Edit'), ['action' => 'edit', $page->id]) ?>
                        <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $page->id], ['confirm' => __('Are you sure you want to delete # {0}?', $page->id)]) ?>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(__('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')) ?></p>
    </div>
</div>
