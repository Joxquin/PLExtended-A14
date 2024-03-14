package O1;

import android.app.Dialog;
/* renamed from: O1.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0073c implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1442d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Dialog f1443e;

    public /* synthetic */ RunnableC0073c(h hVar, int i4) {
        this.f1442d = i4;
        this.f1443e = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1442d) {
            case 0:
                this.f1443e.dismiss();
                return;
            default:
                this.f1443e.cancel();
                return;
        }
    }
}
