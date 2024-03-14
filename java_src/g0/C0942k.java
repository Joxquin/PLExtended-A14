package g0;

import java.util.ArrayList;
/* renamed from: g0.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0942k extends y {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Object f9424d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrayList f9425e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f9426f = null;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ ArrayList f9427g = null;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Object f9428h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ ArrayList f9429i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ C0945n f9430j;

    public C0942k(C0945n c0945n, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f9430j = c0945n;
        this.f9424d = obj;
        this.f9425e = arrayList;
        this.f9428h = obj2;
        this.f9429i = arrayList2;
    }

    @Override // g0.y, g0.InterfaceC0951u
    public final void a(x xVar) {
        C0945n c0945n = this.f9430j;
        Object obj = this.f9424d;
        if (obj != null) {
            c0945n.s(obj, this.f9425e, null);
        }
        Object obj2 = this.f9426f;
        if (obj2 != null) {
            c0945n.s(obj2, this.f9427g, null);
        }
        Object obj3 = this.f9428h;
        if (obj3 != null) {
            c0945n.s(obj3, this.f9429i, null);
        }
    }

    @Override // g0.InterfaceC0951u
    public final void g(x xVar) {
        xVar.z(this);
    }
}
