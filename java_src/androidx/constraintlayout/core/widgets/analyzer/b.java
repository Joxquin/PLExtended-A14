package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import w.InterfaceC1443e;
/* loaded from: classes.dex */
public class b extends a {

    /* renamed from: m  reason: collision with root package name */
    public int f2751m;

    public b(f fVar) {
        super(fVar);
        if (fVar instanceof d) {
            this.f2743e = DependencyNode$Type.HORIZONTAL_DIMENSION;
        } else {
            this.f2743e = DependencyNode$Type.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.a
    public final void d(int i4) {
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
}
