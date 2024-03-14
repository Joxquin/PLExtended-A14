package k;

import android.database.DataSetObserver;
/* renamed from: k.z0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1175z0 extends DataSetObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0 f11039a;

    public C1175z0(C0 c02) {
        this.f11039a = c02;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        if (this.f11039a.b()) {
            this.f11039a.show();
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.f11039a.dismiss();
    }
}
