package j0;

import android.database.DataSetObserver;
/* renamed from: j0.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1108k extends DataSetObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1111n f10651a;

    public C1108k(C1111n c1111n) {
        this.f10651a = c1111n;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.f10651a.e();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.f10651a.e();
    }
}
