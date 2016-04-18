<?php

class JobQueue extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $time;

    /**
     *
     * @var string
     */
    public $data;

    /**
     *
     * @var integer
     */
    public $job;

    /**
     *
     * @var string
     */
    public $status;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'job_queue';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return JobQueue[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return JobQueue
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    /**
     * Independent Column Mapping.
     * Keys are the real names in the table and the values their names in the application
     *
     * @return array
     */
    public function columnMap()
    {
        return array(
            'id' => 'id',
            'time' => 'time',
            'data' => 'data',
            'job' => 'job',
            'status' => 'status'
        );
    }

}