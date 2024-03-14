package h2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes.dex */
public final class d extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f9500a;

    public d(h hVar) {
        this.f9500a = hVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        intent.getData();
        this.f9500a.f9516f.b();
        this.f9500a.f9517g.b();
        this.f9500a.e(context);
        h hVar = this.f9500a;
        if ((hVar.f9520j & 2) != 0) {
            hVar.d();
        }
    }
}
