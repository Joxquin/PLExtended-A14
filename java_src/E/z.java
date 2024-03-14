package e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes.dex */
public final class z extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AbstractC0800A f9006a;

    public z(AbstractC0800A abstractC0800A) {
        this.f9006a = abstractC0800A;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        y yVar = (y) this.f9006a;
        int i4 = yVar.f9003c;
        LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = yVar.f9004d;
        switch (i4) {
            case 0:
                layoutInflater$Factory2C0803D.y(true, true);
                return;
            default:
                layoutInflater$Factory2C0803D.y(true, true);
                return;
        }
    }
}
