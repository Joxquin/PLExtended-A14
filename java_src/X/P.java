package X;

import android.os.Handler;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
/* loaded from: classes.dex */
public final class P implements InterfaceC0098v {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PreferenceGroup f1948a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ S f1949b;

    public P(S s4, PreferenceGroup preferenceGroup) {
        this.f1949b = s4;
        this.f1948a = preferenceGroup;
    }

    @Override // X.InterfaceC0098v
    public final void a(Preference preference) {
        this.f1948a.h(Integer.MAX_VALUE);
        S s4 = this.f1949b;
        Handler handler = s4.f1957e;
        O o4 = s4.f1958f;
        handler.removeCallbacks(o4);
        handler.post(o4);
    }
}
