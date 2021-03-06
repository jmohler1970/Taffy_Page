component persistent="true" output="false" cacheuse="nonstrict-read-write" {

property name="id" fieldtype="id" generator="identity";
property name="firstname" 		default = '';
property name="lastname" 		default = '';
property name="email";
property name="passhash";
property name="loginToken";
property name="tokenCreateDate";

property name="deleted"			default = 0;


void function setPassword(required string password)	{

	this.setPasshash(hash(arguments.password, application.Config.hash_algorithm));
	}


boolean function validatePassword(required string password)	{

	if (isnull(this.getPasshash())){
		return true;
	}

	return this.getPasshash() == hash(arguments.password, application.Config.hash_algorithm);
	}
}
