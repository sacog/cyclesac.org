<?php

class User
{
	public $id;
	public $created;
	public $device;
    public $age;
    public $email;
    public $future_survey;
	public $gender;
	public $ethnicity;
	public $income;
	public $homeZIP;
	public $workZIP;
	public $cycling_freq;
	public $rider_confidence;
	public $app_version;
	

	public function __construct( $object=null )
	{
		if ( is_object( $object ) )
		{
			// NOTE: trim string values to remove whitespace
			// "Tell us about yourself"
            if ( isset( $object->age ) )
                $this->age = $object->age;

            if ( isset( $object->email ) )
				$this->email = trim( $object->email );

            if ( isset( $object->future_survey ) )
                $this->future_survey = $object->future_survey;

			if ( isset( $object->gender ) )
				$this->gender = $object->gender;

			if ( isset( $object->ethnicity ) )
				$this->ethnicity = $object->ethnicity;

			if ( isset( $object->income ) )
				$this->income = $object->income;
			
			// "Your Typical Commute"
			if ( isset( $object->homeZIP ) )
				$this->homeZIP = trim( $object->homeZIP );

			if ( isset( $object->workZIP ) )
				$this->workZIP = trim( $object->workZIP );
			
			// "How often do you cycle?"
			if ( isset( $object->cycling_freq ) )
				$this->cycling_freq = $object->cycling_freq;
						
			// "How confident are you riding your bike?"
			if ( isset( $object->rider_confidence ) )
				$this->rider_confidence = $object->rider_confidence;
				
			// app version
			if ( isset( $object->app_version ) )
				$this->app_version = $object->app_version;
		}
	}

	/**
	* @desc return user-editable personal info fields
	* @return array of user-editable personal info fields as key / value pairs
	*/
	public function getPersonalInfo()
	{
		$info = array(
            'age'          	    => $this->age,
            'email'        	    => $this->email,
            'future_survey'     => $this->future_survey,
			'gender'       	    => $this->gender,
			'ethnicity'    	    => $this->ethnicity,
			'income'       	    => $this->income,
			'homeZIP'      	    => $this->homeZIP,
			'workZIP'      	    => $this->workZIP,
			'cycling_freq' 	    => $this->cycling_freq,
			'rider_confidence'  => $this->rider_confidence,
			'app_version'	    => $this->app_version,
			
		);

		return $info;
	}
}
