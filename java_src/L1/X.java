package L1;

import J1.C0022e;
import android.os.Bundle;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
/* loaded from: classes.dex */
public final class X implements InterfaceC0047b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0022e f1128a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ K1.a f1129b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Z f1130c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f1131d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0046a0 f1132e;

    public X(C0046a0 c0046a0, C0022e c0022e, K1.a aVar, Z z4, boolean z5) {
        this.f1132e = c0046a0;
        this.f1128a = c0022e;
        this.f1129b = aVar;
        this.f1130c = z4;
        this.f1131d = z5;
    }

    @Override // L1.InterfaceC0047b
    public final void a(Bundle bundle) {
        try {
            C0046a0 c0046a0 = this.f1132e;
            C0022e c0022e = this.f1128a;
            this.f1129b.getClass();
            bundle.setClassLoader(EntitiesData.class.getClassLoader());
            C0046a0.b(c0046a0, c0022e, (EntitiesData) bundle.getParcelable("EntitiesData"), this.f1130c, this.f1131d);
        } catch (Throwable th) {
            M1.b.d("Failed to handleEntitiesData", th);
        }
    }
}
