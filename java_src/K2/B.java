package K2;

import android.app.smartspace.SmartspaceTargetEvent;
/* loaded from: classes.dex */
public final class B implements n1.d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f912a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C f913b;

    public /* synthetic */ B(C c4, int i4) {
        this.f912a = i4;
        this.f913b = c4;
    }

    @Override // n1.d
    public final void a(SmartspaceTargetEvent smartspaceTargetEvent) {
        int i4 = this.f912a;
        C c4 = this.f913b;
        switch (i4) {
            case 0:
                n1.f fVar = c4.f931s;
                kotlin.jvm.internal.h.b(fVar);
                fVar.a(smartspaceTargetEvent);
                return;
            default:
                n1.f fVar2 = c4.f931s;
                kotlin.jvm.internal.h.b(fVar2);
                fVar2.a(smartspaceTargetEvent);
                return;
        }
    }
}
