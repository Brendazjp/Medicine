cityList = new Array();
var provIndex = -1;
var cityIndex;

function is_quotes(form_value){
  if(event.keyCode==39){
      window.alert("���������뵥���ţ�");
      return false;
   }
  return true;
}

function searchQuotes(form_value){
	var len ;
	len = form_value.length;

	for (var i = 0; i < len; i++)
	{
		var temp = "";
		temp = form_value.substring(i, i + 1);
		//alert(temp);
		if (temp == '\'')
		{
			window.alert("���������뵥���ţ�");
			return false;
		}
	}
	return true;
}

function newProv(){   //���ɶ�ά����
  provIndex++;
  cityList[provIndex] = new Array();
  cityIndex = 0;
}

function addCity( city, value ) {
  cityList[provIndex][cityIndex] = new aCity(city, value);  //����һ������,aCityΪһ�������
  cityIndex++;
}
//aCity�Ĺ��캯��
function aCity( text, value ) {
  this.text = text;
  this.value = value;
}

function updatecitys( ar, topic, areavalue ) 
{
  with (ar) 
  {
    newProvs = cityList[topic].length;
    oldTopics = options.length;

    // add new citys to the menu
    for ( i=0; i<newProvs; i++ ) 
	{
      options[i] = new Option( cityList[topic][i].text,
        cityList[topic][i].value );
      options[i].selected = cityList[topic][i].value == areavalue;
    }

    // remove any left from previous menu
    for ( i=oldTopics-1; i>=newProvs; i-- ) 
      options[i] = null;

    if ( areavalue == '' )
      options[0].selected = true;
  }
}
