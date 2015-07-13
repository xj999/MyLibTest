package com.util.luxj.mylibrary;

import android.content.Context;
import android.widget.Toast;

/**
 * Created by Luxj on 2015/7/13.
 */
public class Public_function {
    public static void getTime(Context context)
    {
        Toast.makeText(context,context.getString(R.string.app_name1),Toast.LENGTH_LONG).show();
        System.out.println("now is pm++++++++++++"+Test.getNum());
    }



}
