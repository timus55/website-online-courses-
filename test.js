function validate()
{
	var uname = myform.uname.value;
	var pwd = myform.pwd.value;

	var flag = true;
	var str = "";

	var name_filter = /^([a-zA-Z0-9])+$/;

	if(uname.trim() === "")
	{
		flag = false;
		str += "Username should not be blank!!\n";
	}

	if(pwd.trim() === "")
	{
		flag = false;
		str += "Password should not be blank!!\n";
	}
/*
	if(cpwd.trim() === "" || pwd != cpwd)
	{
		flag = false;
		str += "Password is blank or does not match!!\n";
	}
*/
	
	if(!flag)
	{
		alert("Warning!!!\n" + str);
	}
	return flag;

}
