function getAllSheets() {if( !window.ScriptEngine && navigator.__ice_version ) 	{    return document.styleSheets;     }if( document.getElementsByTagName ) 	{    var Lt = document.getElementsByTagName('link');    var St = document.getElementsByTagName('style');  	} else if( document.styleSheets && document.all ) 	{    var Lt = document.all.tags('LINK'), St = document.all.tags('STYLE');  	} else 	{ 	return []; 	}for( var x = 0, os = []; Lt[x]; x++ ) 	{    if( Lt[x].rel )     	{     	var rel = Lt[x].rel;	    } 	    else 	if( Lt[x].getAttribute ) 		{ 		var rel = Lt[x].getAttribute('rel');    	}     else     	{     	var rel = '';     	}    if( typeof( rel ) == 'string' && rel.toLowerCase().indexOf('style') + 1 )     	{	    os[os.length] = Lt[x];    	}  	}for( var x = 0; St[x]; x++ ) 	{ 	os[os.length] = St[x]; 	} return os;}function changeStyle(newstyle) {ss = getAllSheets();for( var x = 0; ss[x]; x++ ) 	{    if( ss[x].title )     	{      	ss[x].disabled = true;	    }      	if (ss[x].title == newstyle )    		{        ss[x].disabled = false;	    }    }}function all(){	changeStyle("Default");	document.cookie="platform=all";}function mac(){	changeStyle("Mac");	document.cookie="platform=mac";}function win(){	changeStyle("Win");	document.cookie="platform=win";}function linux(){	changeStyle("Linux");	document.cookie="platform=linux";}function crossplatform(){	changeStyle("Crossplatform");	document.cookie="platform=crossplatform";}function Init(){s=document.cookie;if (s=='platform=mac') mac();if (s=='platform=win') win();if (s=='platform=linux') linux();if (s=='platform=all') all();if (s=='platform=crossplatform') crossplatform();if (s=='mac') mac();if (s=='win') win();if (s=='linux') linux();if (s=='all') all();if (s=='crossplatform') crossplatform();}