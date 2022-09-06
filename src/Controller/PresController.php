<?php
// src/Controller/HeadersController.php

namespace App\Controller;
use App\Controller\AppController;
use Cake\ORM\Behavior\Translate\TranslateTrait;
use Cake\I18n\I18n;
class PresController extends AppController
        {   public function add(){
            $pre = $this->Pres->newEntity();
            if ($this->request->is('post')) {
            $pre = $this->Pres->patchEntity($pre, $this->request->data);
            if(isset($this->request->data['french']) && !empty($this->request->data['french'])){
                $pre->translation('fr')->about = $this->request->data['french'];
               
            }
            if(isset($this->request->data['spanish']) && !empty($this->request->data['spanish'])){
                $pre->translation('es')->about = $this->request->data['spanish'];
                
                
            }
            if(isset($this->request->data['vietnam']) && !empty($this->request->data['vietnam'])){
                $pre->translation('vi')->about = $this->request->data['vietnam'];
                
                
            }
            
            $pre->user_id = $this->Auth->user('id');
            
            if ($this->Pres->save($pre)) {
                $this->Flash->success(__('Your article has been saved.'));
                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('Unable to add your article.'));
            }
            $this->set('pre', $pre);




        }
        public function index()
    {
        $this->loadComponent('Paginator');
        $pres = $this->Paginator->paginate($this->Pres->find());
        $this->set(compact('pres'));
    }
    public function delete($id)
    {
    $this->request->allowMethod(['post', 'delete']);

    $pre = $this->Pres->get($id);
    if ($this->Pres->delete($pre)) {
        $this->Flash->success(__('The post with id: {0} has been deleted.', h($id)));
        return $this->redirect(['action' => 'index']);
                    }
    }
      public function view($id= null)
        {
        $pre = $this->Pres->get($id);
            
        $this->set('pre', $pre);
        }

        public function edit($id = null)
        {
            $pre = $this->Pres->get($id);
            if ($this->request->is(['patch', 'post', 'put'])) {
                $pre = $this->Pres->patchEntity($pre, $this->request->getData());
                if ($this->Pres->save($pre)) {
                    $this->Flash->success(__('The user has been saved.'));
    
                    return $this->redirect(['action' => 'index']);
                }
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
            $this->set(compact('pre'));
        }
public function isAuthorized($user)
{
    $action = $this->request->getParam('action');
    // The add and tags actions are always allowed to logged in users.
    if (in_array($action, ['add', 'tags', 'delete'])) {
        return true;
    }

    // All other actions require a slug.
    $id = $this->request->getParam('pass.0');
    if (!$id) {
        return false;
    }

    // Check that the article belongs to the current user.
    $pre = $this->Pres->get($id)->first();

    return $pre->user_id === $user['id'];
}

    }