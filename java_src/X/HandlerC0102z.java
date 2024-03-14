package X;

import android.os.Handler;
import android.os.Message;
import androidx.preference.PreferenceFragment;
import androidx.preference.PreferenceScreen;
/* renamed from: X.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0102z extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PreferenceFragment f2021a;

    public HandlerC0102z(PreferenceFragment preferenceFragment) {
        this.f2021a = preferenceFragment;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        PreferenceFragment preferenceFragment = this.f2021a;
        PreferenceScreen preferenceScreen = preferenceFragment.f3694e.f1971g;
        if (preferenceScreen != null) {
            preferenceFragment.f3695f.setAdapter(new S(preferenceScreen));
            preferenceScreen.onAttached();
        }
    }
}
