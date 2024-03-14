package e;

import android.os.Message;
import android.view.View;
/* renamed from: e.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0812d implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0819k f8906d;

    public View$OnClickListenerC0812d(C0819k c0819k) {
        this.f8906d = c0819k;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message message;
        Message message2;
        Message message3;
        C0819k c0819k = this.f8906d;
        Message obtain = (view != c0819k.f8960k || (message3 = c0819k.f8962m) == null) ? (view != c0819k.f8964o || (message2 = c0819k.f8966q) == null) ? (view != c0819k.f8968s || (message = c0819k.f8970u) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
        if (obtain != null) {
            obtain.sendToTarget();
        }
        C0819k c0819k2 = this.f8906d;
        c0819k2.f8948L.obtainMessage(1, c0819k2.f8951b).sendToTarget();
    }
}
