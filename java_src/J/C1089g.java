package j;

import android.os.SystemClock;
import android.view.MenuItem;
import java.util.ArrayList;
import k.D0;
/* renamed from: j.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1089g implements D0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View$OnKeyListenerC1091i f10519d;

    public C1089g(View$OnKeyListenerC1091i view$OnKeyListenerC1091i) {
        this.f10519d = view$OnKeyListenerC1091i;
    }

    @Override // k.D0
    public final void c(C1097o c1097o, MenuItem menuItem) {
        this.f10519d.f10532j.removeCallbacksAndMessages(c1097o);
    }

    @Override // k.D0
    public final void j(C1097o c1097o, r rVar) {
        View$OnKeyListenerC1091i view$OnKeyListenerC1091i = this.f10519d;
        view$OnKeyListenerC1091i.f10532j.removeCallbacksAndMessages(null);
        int size = ((ArrayList) view$OnKeyListenerC1091i.f10534l).size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i4 = -1;
                break;
            } else if (c1097o == ((C1090h) ((ArrayList) view$OnKeyListenerC1091i.f10534l).get(i4)).f10521b) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 == -1) {
            return;
        }
        int i5 = i4 + 1;
        view$OnKeyListenerC1091i.f10532j.postAtTime(new RunnableC1088f(this, i5 < ((ArrayList) view$OnKeyListenerC1091i.f10534l).size() ? (C1090h) ((ArrayList) view$OnKeyListenerC1091i.f10534l).get(i5) : null, rVar, c1097o), c1097o, SystemClock.uptimeMillis() + 200);
    }
}
