

<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
    </li>
         <li class="heading"><h3><?= $this->Html->link(__('Z0graviry'), ['controller' => 'Headers', 'action' => 'index']) ?></h3></li>
          <li class="heading"><h6><?= __('PRESSE') ?></h6></li>
        <li><?= $this->Html->link(__('New Presses'), ['controller' => 'Pres', 'action' => 'add']) ?></li>
         <li><?= $this->Html->link(__('List Presses'), ['controller' => 'Pres', 'action' => 'index']) ?></li>
         <li class="heading"><h6><?= __('POURS') ?></h6></li>
        <li ><?= $this->Html->link(__('New Pours'), ['controller' => 'Pours', 'action' => 'add']) ?></li>
         <li><?= $this->Html->link(__('List Pours'), ['controller' => 'Pours', 'action' => 'index']) ?></li>
         <li class="heading"><h6><?= __('HEADERS') ?></h6></li>
        <li><?= $this->Html->link(__('New Header'), ['controller' => 'Headers', 'action' => 'add']) ?></li>
         <li><?= $this->Html->link(__('New Headers'), ['controller' => 'Headers', 'action' => 'list']) ?></li>
         <li class="heading"><h6><?= __('USERS') ?></h6></li>
        <li><?= $this->Html->link(__('New Users'), ['controller' => 'Users', 'action' => 'add']) ?></li>
         <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('LOGIN'), ['controller' => 'Users', 'action' => 'login']) ?></li>
          <li><?= $this->Html->link(__('LOGOUT'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
    </ul>
</nav>
<div class="users form large-9 medium-8 columns content">
   <?php
     echo $this->Form->create($header);
     echo $this->Form->control('user_id', ['type' => 'hidden', 'value' => 1]);
     echo $this->Form->control('munber_style');
     echo $this->Form->control('my_img');
     echo $this->Form->control('my_color');
      echo $this->Form->control('my_background');
     echo $this->Form->control('bnt');
     echo $this->Form->control('bnt_video');
      echo $this->Form->control('my_title');
      echo $this->Form->input('french-title');
      echo $this->Form->input('spanish-title');
      echo $this->Form->input('vietnam-title');
      echo $this->Form->input('my_about');
      echo $this->Form->input('french');
      echo $this->Form->input('spanish');
      echo $this->Form->input('vietnam');
    ?>
    </fieldset>
            <?= $this->Form->postLink(
                            __('Delete'),
                            ['action' => 'delete', $header->id],
                            ['confirm' => __('Are you sure you want to delete # {0}?', $header->id)])
            ?>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>