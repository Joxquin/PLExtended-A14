package j;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: j.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnGlobalLayoutListenerC1086d implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View$OnKeyListenerC1091i f10513d;

    public ViewTreeObserver$OnGlobalLayoutListenerC1086d(View$OnKeyListenerC1091i view$OnKeyListenerC1091i) {
        this.f10513d = view$OnKeyListenerC1091i;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (!this.f10513d.b() || ((ArrayList) this.f10513d.f10534l).size() <= 0 || ((C1090h) ((ArrayList) this.f10513d.f10534l).get(0)).f10520a.f10728B) {
            return;
        }
        View view = this.f10513d.f10541s;
        if (view == null || !view.isShown()) {
            this.f10513d.dismiss();
            return;
        }
        Iterator it = ((ArrayList) this.f10513d.f10534l).iterator();
        while (it.hasNext()) {
            ((C1090h) it.next()).f10520a.show();
        }
    }
}
