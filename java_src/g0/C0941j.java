package g0;

import android.view.View;
import java.util.ArrayList;
/* renamed from: g0.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0941j implements InterfaceC0951u {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View f9422d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrayList f9423e;

    public C0941j(View view, ArrayList arrayList) {
        this.f9422d = view;
        this.f9423e = arrayList;
    }

    @Override // g0.InterfaceC0951u
    public final void a(x xVar) {
        xVar.z(this);
        xVar.a(this);
    }

    @Override // g0.InterfaceC0951u
    public final void b() {
    }

    @Override // g0.InterfaceC0951u
    public final void d() {
    }

    @Override // g0.InterfaceC0951u
    public final void f(x xVar) {
    }

    @Override // g0.InterfaceC0951u
    public final void g(x xVar) {
        xVar.z(this);
        this.f9422d.setVisibility(8);
        ArrayList arrayList = this.f9423e;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((View) arrayList.get(i4)).setVisibility(0);
        }
    }
}
