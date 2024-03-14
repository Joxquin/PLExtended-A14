package X;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceScreen;
/* loaded from: classes.dex */
public final class X {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1965a;

    /* renamed from: b  reason: collision with root package name */
    public long f1966b = 0;

    /* renamed from: c  reason: collision with root package name */
    public SharedPreferences f1967c = null;

    /* renamed from: d  reason: collision with root package name */
    public SharedPreferences.Editor f1968d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1969e;

    /* renamed from: f  reason: collision with root package name */
    public String f1970f;

    /* renamed from: g  reason: collision with root package name */
    public PreferenceScreen f1971g;

    /* renamed from: h  reason: collision with root package name */
    public W f1972h;

    /* renamed from: i  reason: collision with root package name */
    public U f1973i;

    /* renamed from: j  reason: collision with root package name */
    public V f1974j;

    public X(Context context) {
        this.f1965a = context;
        this.f1970f = context.getPackageName() + "_preferences";
    }

    public final SharedPreferences.Editor a() {
        if (this.f1969e) {
            if (this.f1968d == null) {
                this.f1968d = b().edit();
            }
            return this.f1968d;
        }
        return b().edit();
    }

    public final SharedPreferences b() {
        if (this.f1967c == null) {
            this.f1967c = this.f1965a.getSharedPreferences(this.f1970f, 0);
        }
        return this.f1967c;
    }
}
