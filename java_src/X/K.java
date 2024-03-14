package X;

import androidx.preference.PreferenceGroup;
/* loaded from: classes.dex */
public final class K implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ PreferenceGroup f1945d;

    public K(PreferenceGroup preferenceGroup) {
        this.f1945d = preferenceGroup;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this) {
            this.f1945d.f3700d.clear();
        }
    }
}
