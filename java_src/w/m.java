package w;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import s.C1391a;
import v.C1426b;
import v.C1429e;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: f  reason: collision with root package name */
    public static int f12713f;

    /* renamed from: b  reason: collision with root package name */
    public final int f12715b;

    /* renamed from: c  reason: collision with root package name */
    public int f12716c;

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f12714a = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public ArrayList f12717d = null;

    /* renamed from: e  reason: collision with root package name */
    public int f12718e = -1;

    public m(int i4) {
        this.f12715b = -1;
        int i5 = f12713f;
        f12713f = i5 + 1;
        this.f12715b = i5;
        this.f12716c = i4;
    }

    public final void a(ArrayList arrayList) {
        int size = this.f12714a.size();
        if (this.f12718e != -1 && size > 0) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                m mVar = (m) arrayList.get(i4);
                if (this.f12718e == mVar.f12715b) {
                    c(this.f12716c, mVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(t.f fVar, int i4) {
        int n4;
        int n5;
        ArrayList arrayList = this.f12714a;
        if (arrayList.size() == 0) {
            return 0;
        }
        v.g gVar = (v.g) ((v.f) arrayList.get(0)).f12495W;
        fVar.s();
        gVar.c(fVar, false);
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            ((v.f) arrayList.get(i5)).c(fVar, false);
        }
        if (i4 == 0 && gVar.f12544B0 > 0) {
            C1426b.a(gVar, fVar, arrayList, 0);
        }
        if (i4 == 1 && gVar.f12545C0 > 0) {
            C1426b.a(gVar, fVar, arrayList, 1);
        }
        try {
            fVar.p();
        } catch (Exception e4) {
            System.err.println(e4.toString() + "\n" + Arrays.toString(e4.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", ""));
        }
        this.f12717d = new ArrayList();
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            this.f12717d.add(new l((v.f) arrayList.get(i6), fVar));
        }
        if (i4 == 0) {
            n4 = t.f.n(gVar.f12483K);
            n5 = t.f.n(gVar.f12485M);
            fVar.s();
        } else {
            n4 = t.f.n(gVar.f12484L);
            n5 = t.f.n(gVar.f12486N);
            fVar.s();
        }
        return n5 - n4;
    }

    public final void c(int i4, m mVar) {
        Iterator it = this.f12714a.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            int i5 = mVar.f12715b;
            if (!hasNext) {
                this.f12718e = i5;
                return;
            }
            v.f fVar = (v.f) it.next();
            ArrayList arrayList = mVar.f12714a;
            if (!arrayList.contains(fVar)) {
                arrayList.add(fVar);
            }
            if (i4 == 0) {
                fVar.f12532q0 = i5;
            } else {
                fVar.f12534r0 = i5;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i4 = this.f12716c;
        sb.append(i4 == 0 ? "Horizontal" : i4 == 1 ? "Vertical" : i4 == 2 ? "Both" : "Unknown");
        sb.append(" [");
        String a4 = C1429e.a(sb, this.f12715b, "] <");
        Iterator it = this.f12714a.iterator();
        while (it.hasNext()) {
            StringBuilder a5 = t.j.a(a4, " ");
            a5.append(((v.f) it.next()).f12520k0);
            a4 = a5.toString();
        }
        return C1391a.a(a4, " >");
    }
}
