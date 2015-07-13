# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in F:\development\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http:#developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-keep public class com.util.luxj.mylibrary.Public_function{*;}
-keepattributes Signature
-keep class **.R$* { *; }

-keepclasseswithmembernames class * {
    native <methods>;
}

#保护指定的类和类的成员，但条件是所有指定的类和类成员是要存在
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}


-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

#保护指定类的成员，如果此类受到保护他们会保护的更好
-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

#保护指定的类文件和类成员
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}