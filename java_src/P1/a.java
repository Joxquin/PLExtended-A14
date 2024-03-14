package P1;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final SharedPreferences f1536a;

    /* renamed from: b  reason: collision with root package name */
    public long f1537b;

    public a(Context context) {
        this.f1536a = context.getSharedPreferences("pref_doodle_impressions", 0);
    }
}
