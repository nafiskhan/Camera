package com.foregroundgalleryplugin;


import org.apache.cordova.DroidGap;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.Toast;

public class MyToaster
{
        private WebView mAppView;
        private DroidGap mGap;

        public MyToaster(DroidGap gap, WebView view)
        {
                mAppView = view;
                mGap = gap;
        }

        public void showMessage(String message)
        {
                Toast.makeText(mGap, message, Toast.LENGTH_LONG).show();
        }
} 