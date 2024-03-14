package m0;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import n0.w;
import r0.C1377h;
/* loaded from: classes.dex */
public final class m implements n, k {

    /* renamed from: a  reason: collision with root package name */
    public final Path f11666a = new Path();

    /* renamed from: b  reason: collision with root package name */
    public final Path f11667b = new Path();

    /* renamed from: c  reason: collision with root package name */
    public final Path f11668c = new Path();

    /* renamed from: d  reason: collision with root package name */
    public final List f11669d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public final C1377h f11670e;

    public m(C1377h c1377h) {
        c1377h.getClass();
        this.f11670e = c1377h;
    }

    public final void b(Path.Op op) {
        Matrix matrix;
        Matrix matrix2;
        Path path = this.f11667b;
        path.reset();
        Path path2 = this.f11666a;
        path2.reset();
        ArrayList arrayList = (ArrayList) this.f11669d;
        for (int size = arrayList.size() - 1; size >= 1; size--) {
            n nVar = (n) arrayList.get(size);
            if (nVar instanceof e) {
                e eVar = (e) nVar;
                List d4 = eVar.d();
                for (int size2 = d4.size() - 1; size2 >= 0; size2--) {
                    Path g4 = ((n) d4.get(size2)).g();
                    w wVar = eVar.f11612k;
                    if (wVar != null) {
                        matrix2 = wVar.d();
                    } else {
                        matrix2 = eVar.f11604c;
                        matrix2.reset();
                    }
                    g4.transform(matrix2);
                    path.addPath(g4);
                }
            } else {
                path.addPath(nVar.g());
            }
        }
        n nVar2 = (n) arrayList.get(0);
        if (nVar2 instanceof e) {
            e eVar2 = (e) nVar2;
            List d5 = eVar2.d();
            for (int i4 = 0; i4 < d5.size(); i4++) {
                Path g5 = ((n) d5.get(i4)).g();
                w wVar2 = eVar2.f11612k;
                if (wVar2 != null) {
                    matrix = wVar2.d();
                } else {
                    matrix = eVar2.f11604c;
                    matrix.reset();
                }
                g5.transform(matrix);
                path2.addPath(g5);
            }
        } else {
            path2.set(nVar2.g());
        }
        this.f11668c.op(path2, path, op);
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
        int i4 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.f11669d;
            if (i4 >= arrayList.size()) {
                return;
            }
            ((n) arrayList.get(i4)).c(list, list2);
            i4++;
        }
    }

    @Override // m0.k
    public final void d(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) listIterator.previous();
            if (interfaceC1303d instanceof n) {
                ((ArrayList) this.f11669d).add((n) interfaceC1303d);
                listIterator.remove();
            }
        }
    }

    @Override // m0.n
    public final Path g() {
        Path path = this.f11668c;
        path.reset();
        C1377h c1377h = this.f11670e;
        if (c1377h.f12102b) {
            return path;
        }
        int ordinal = c1377h.f12101a.ordinal();
        if (ordinal == 0) {
            int i4 = 0;
            while (true) {
                ArrayList arrayList = (ArrayList) this.f11669d;
                if (i4 >= arrayList.size()) {
                    break;
                }
                path.addPath(((n) arrayList.get(i4)).g());
                i4++;
            }
        } else if (ordinal == 1) {
            b(Path.Op.UNION);
        } else if (ordinal == 2) {
            b(Path.Op.REVERSE_DIFFERENCE);
        } else if (ordinal == 3) {
            b(Path.Op.INTERSECT);
        } else if (ordinal == 4) {
            b(Path.Op.XOR);
        }
        return path;
    }
}
