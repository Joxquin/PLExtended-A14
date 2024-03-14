package X;

import android.os.Handler;
import android.os.Message;
import androidx.preference.PreferenceFragmentCompat;
/* loaded from: classes.dex */
public final class F extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PreferenceFragmentCompat f1940a;

    public F(PreferenceFragmentCompat preferenceFragmentCompat) {
        this.f1940a = preferenceFragmentCompat;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        this.f1940a.bindPreferences();
    }
}
