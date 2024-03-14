package io.grpc.binder;

import android.content.Context;
import io.grpc.internal.InterfaceC1051t1;
/* loaded from: classes.dex */
public final class b implements InterfaceC1051t1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f9697a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f9698b;

    public b(d dVar, Context context) {
        this.f9698b = dVar;
        this.f9697a = context;
    }

    @Override // io.grpc.internal.InterfaceC1051t1
    public final c a() {
        Context context = this.f9697a;
        d dVar = this.f9698b;
        return new c(context, dVar.f9710b, dVar.f9711c, dVar.f9709a.f10406b, dVar.f9712d, dVar.f9714f, dVar.f9713e);
    }
}
