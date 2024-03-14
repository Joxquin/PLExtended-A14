package W1;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import com.android.launcher3.proxy.ProxyActivityStarter;
import com.android.launcher3.util.StartActivityParams;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f1910a = Uri.parse("googleapp://lens");

    public static void a(Context context) {
        StartActivityParams startActivityParams = new StartActivityParams((PendingIntent) null, 0);
        startActivityParams.intent = new Intent("android.intent.action.VIEW").setData(f1910a.buildUpon().appendQueryParameter("lens_intent_type", "31").appendQueryParameter("ActivityLaunchTimestampNanos", String.valueOf(SystemClock.elapsedRealtimeNanos())).build());
        context.startActivity(ProxyActivityStarter.getLaunchIntent(context, startActivityParams));
    }
}
