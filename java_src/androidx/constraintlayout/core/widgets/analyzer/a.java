package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import w.InterfaceC1443e;
/* loaded from: classes.dex */
public class a implements InterfaceC1443e {

    /* renamed from: d  reason: collision with root package name */
    public final f f2742d;

    /* renamed from: f  reason: collision with root package name */
    public int f2744f;

    /* renamed from: g  reason: collision with root package name */
    public int f2745g;

    /* renamed from: a  reason: collision with root package name */
    public f f2739a = null;

    /* renamed from: b  reason: collision with root package name */
    public boolean f2740b = false;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2741c = false;

    /* renamed from: e  reason: collision with root package name */
    public DependencyNode$Type f2743e = DependencyNode$Type.UNKNOWN;

    /* renamed from: h  reason: collision with root package name */
    public int f2746h = 1;

    /* renamed from: i  reason: collision with root package name */
    public b f2747i = null;

    /* renamed from: j  reason: collision with root package name */
    public boolean f2748j = false;

    /* renamed from: k  reason: collision with root package name */
    public final List f2749k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    public final List f2750l = new ArrayList();

    public a(f fVar) {
        this.f2742d = fVar;
    }

    @Override // w.InterfaceC1443e
    public final void a(InterfaceC1443e interfaceC1443e) {
        ArrayList arrayList = (ArrayList) this.f2750l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((a) it.next()).f2748j) {
                return;
            }
        }
        this.f2741c = true;
        f fVar = this.f2739a;
        if (fVar != null) {
            fVar.a(this);
        }
        if (this.f2740b) {
            this.f2742d.a(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        a aVar = null;
        int i4 = 0;
        while (it2.hasNext()) {
            a aVar2 = (a) it2.next();
            if (!(aVar2 instanceof b)) {
                i4++;
                aVar = aVar2;
            }
        }
        if (aVar != null && i4 == 1 && aVar.f2748j) {
            b bVar = this.f2747i;
            if (bVar != null) {
                if (!bVar.f2748j) {
                    return;
                }
                this.f2744f = this.f2746h * bVar.f2745g;
            }
            d(aVar.f2745g + this.f2744f);
        }
        f fVar2 = this.f2739a;
        if (fVar2 != null) {
            fVar2.a(this);
        }
    }

    public final void b(InterfaceC1443e interfaceC1443e) {
        ((ArrayList) this.f2749k).add(interfaceC1443e);
        if (this.f2748j) {
            interfaceC1443e.a(interfaceC1443e);
        }
    }

    public final void c() {
        ((ArrayList) this.f2750l).clear();
        ((ArrayList) this.f2749k).clear();
        this.f2748j = false;
        this.f2745g = 0;
        this.f2741c = false;
        this.f2740b = false;
    }

    public void d(int i4) {
        if (this.f2748j) {
            return;
        }
        this.f2748j = true;
        this.f2745g = i4;
        Iterator it = ((ArrayList) this.f2749k).iterator();
        while (it.hasNext()) {
            InterfaceC1443e interfaceC1443e = (InterfaceC1443e) it.next();
            interfaceC1443e.a(interfaceC1443e);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2742d.f2756b.f12520k0);
        sb.append(":");
        sb.append(this.f2743e);
        sb.append("(");
        sb.append(this.f2748j ? Integer.valueOf(this.f2745g) : "unresolved");
        sb.append(") <t=");
        sb.append(((ArrayList) this.f2750l).size());
        sb.append(":d=");
        sb.append(((ArrayList) this.f2749k).size());
        sb.append(">");
        return sb.toString();
    }
}
