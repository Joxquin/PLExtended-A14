package O2;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final String f1516a;

    /* renamed from: b  reason: collision with root package name */
    public final h f1517b;

    /* renamed from: c  reason: collision with root package name */
    public h f1518c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1519d;

    public i(String str) {
        h hVar = new h();
        this.f1517b = hVar;
        this.f1518c = hVar;
        this.f1519d = false;
        this.f1516a = str;
    }

    public final void a(Object obj, String str) {
        h hVar = new h();
        this.f1518c.f1515c = hVar;
        this.f1518c = hVar;
        hVar.f1514b = obj;
        hVar.f1513a = str;
    }

    public final void b(String str, long j4) {
        d(String.valueOf(j4), str);
    }

    public final void c(String str, boolean z4) {
        d(String.valueOf(z4), str);
    }

    public final void d(Object obj, String str) {
        g gVar = new g();
        this.f1518c.f1515c = gVar;
        this.f1518c = gVar;
        gVar.f1514b = obj;
        gVar.f1513a = str;
    }

    public final String toString() {
        boolean z4 = this.f1519d;
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f1516a);
        sb.append('{');
        String str = "";
        for (h hVar = this.f1517b.f1515c; hVar != null; hVar = hVar.f1515c) {
            Object obj = hVar.f1514b;
            if ((hVar instanceof g) || obj != null || !z4) {
                sb.append(str);
                String str2 = hVar.f1513a;
                if (str2 != null) {
                    sb.append(str2);
                    sb.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                }
                str = ", ";
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
