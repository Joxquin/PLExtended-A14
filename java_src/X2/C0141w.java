package X2;

import io.grpc.internal.C1009h;
import java.util.concurrent.Executor;
/* renamed from: X2.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0141w extends AbstractC0111e {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC0111e f2246a;

    public C0141w(AbstractC0111e abstractC0111e, AbstractC0111e abstractC0111e2) {
        O2.m.h(abstractC0111e, "creds1");
        this.f2246a = abstractC0111e;
    }

    @Override // X2.AbstractC0111e
    public final void a(C1009h c1009h, Executor executor, AbstractC0109d abstractC0109d) {
        this.f2246a.a(c1009h, executor, new C0140v(abstractC0109d, C.b()));
    }
}
