/**
 * author: vince.su
 */

var FormUtil = {
		
	setValue: function(formid,data)
	{
		var item = document.getElementById(formid);
		this._setValue(item, data);
	},
	_setValue: function(item,data)
	{
		if(item.tagName.toUpperCase() == "SELECT" || item.children.length == 0)
		{
			if(item.name != null && item.name!="")
			{
				if(data == null)
					item.value = null;
				else if(data[item.name] != null)
					item.value = data[item.name];
			}
			
		} else
		{
			var nodes = item.children;
			for(var i=0;i<nodes.length;i++)
			{
				this._setValue(nodes[i], data);
			}
		}
	},
	getValue: function(formid)
	{
		var result = {};
		var item = document.getElementById(formid);
		this._getValue(item, result);
		return result;
	},
	_getValue: function(item,data)
	{
		if(item.tagName.toUpperCase() == "SELECT" || item.children.length == 0)
		{
			if(item.name!=null && item.name!="")
				data[item.name] = item.value;
			
		} else
		{
			var nodes = item.children;
			for(var i=0;i<nodes.length;i++)
			{
				this._getValue(nodes[i], data);
			}
		}
	},
	check: function(item,ifwarn) {
		debugger;
		if(ifwarn==null || ifwarn==undefined)
			ifwarn=false;
		if(item.tagName.toUpperCase() == "SELECT" || item.children.length == 0)
		{
			if(item.getAttribute("required")!=null)
			{
				if(item.getAttribute("required")=="true" || item.getAttribute("required")==true)
				{
					if(item.value == null || item.value=="")
					{
						if(ifwarn)
							this.warn(item);
						return false;
					}
				}
			}
			if(item.getAttribute("ver-type")!=null)
			{
				if(item.getAttribute("ver-type")=="email")
				{
					var reg = /^(?:[a-z\d]+[_\-\+\.]?)*[a-z\d]+@(?:([a-z\d]+\-?)*[a-z\d]+\.)+([a-z]{2,})+$/i;
					if(!reg.test(item.value))
					{
						if(ifwarn)
							this.warn(item);
						return false;
					}
				}
			}
			
			return true;
		} 
		else
		{
			var nodes = item.children;
			for(var i=0;i<nodes.length;i++)
			{
				if(this.check(nodes[i],ifwarn))
					continue;
				else
					return false;
			}
			return true;
		}
	},
	warn: function(item) {
		if(item.getAttribute("alertmsg")!=null && item.getAttribute("alertmsg")!="")
			alert(item.getAttribute("alertmsg"));
	},
	checkForEmpty: function(item) {
		
		if(item.tagName.toUpperCase() == "SELECT" || item.children.length == 0)
		{
			if(item.getAttribute("required")!=null)
			{
				if(item.getAttribute("required")=="true" || item.getAttribute("required")==true)
				{
					if(item.value == null || item.value=="")
					{
						if(item.getAttribute("alertmsg")!=null && item.getAttribute("alertmsg")!="")
							alert(item.getAttribute("alertmsg"));
						return false;
					}
					else
					{
						return true;
					}
				}
			}
			return true;
		} 
		else
		{
			var nodes = item.children;
			for(var i=0;i<nodes.length;i++)
			{
				if(this.checkForEmpty(nodes[i]))
					continue;
				else
					return false;
			}
			return true;
		}
	}
};
