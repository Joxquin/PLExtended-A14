package i;

import androidx.core.view.P;
import androidx.core.view.Q;
/* loaded from: classes.dex */
public final class k extends Q {

    /* renamed from: a  reason: collision with root package name */
    public boolean f9596a = false;

    /* renamed from: b  reason: collision with root package name */
    public int f9597b = 0;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ l f9598c;

    public k(l lVar) {
        this.f9598c = lVar;
    }

    @Override // androidx.core.view.P
    public final void a() {
        int i4 = this.f9597b + 1;
        this.f9597b = i4;
        l lVar = this.f9598c;
        if (i4 == lVar.f9599a.size()) {
            P p4 = lVar.f9602d;
            if (p4 != null) {
                p4.a();
            }
            this.f9597b = 0;
            this.f9596a = false;
            lVar.f9603e = false;
        }
    }

    @Override // androidx.core.view.Q, androidx.core.view.P
    public final void c() {
        if (this.f9596a) {
            return;
        }
        this.f9596a = true;
        P p4 = this.f9598c.f9602d;
        if (p4 != null) {
            p4.c();
        }
    }
}
