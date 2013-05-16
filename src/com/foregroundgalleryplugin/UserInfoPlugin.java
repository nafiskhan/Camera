package com.foregroundgalleryplugin;

import org.apache.cordova.DroidGap;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;
import android.webkit.WebView;

public class UserInfoPlugin extends CordovaPlugin {
	
	private WebView mAppView;
    private DroidGap mGap;
    

	String phone;
	String gender;
	String dob;
	String name="DefaultName";
	JSONObject options;

	
    public UserInfoPlugin()
    {
    	
    }
	public UserInfoPlugin(DroidGap gap, WebView view) {

        mAppView = view;
        mGap = gap;
	}
	
	
	public String getName()  {
		
		
		return this.name;
	}
	


	public String getPhone()  {
		
		return this.phone;
	}



	public String getGender() {
		return gender;
	}



	public String getDob() {
		return dob;
	}

	
	public boolean execute(String action, JSONArray json, CallbackContext callbackContext) throws JSONException {
        
		Log.w("Plugin Success with","Cordova");
		

		 options = json.optJSONObject(0);
		
		 name = options.getString("name");
		 phone = options.getString("phone");
		 gender = options.getString("gender");
		 dob	= options.getString("dob");
		 
		Log.w("Name-------------",name);
		Log.w("Phone------------",phone);
		Log.w("Gender-----------",gender);
		Log.w("DOB--------------",dob);
		return true;
	}
	
}
