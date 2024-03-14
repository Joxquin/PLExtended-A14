package t;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public m f12324a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ l f12325b;

    public k(l lVar) {
        this.f12325b = lVar;
    }

    public final String toString() {
        String str = "[ ";
        if (this.f12324a != null) {
            for (int i4 = 0; i4 < 9; i4++) {
                StringBuilder a4 = C1395a.a(str);
                a4.append(this.f12324a.f12337k[i4]);
                a4.append(" ");
                str = a4.toString();
            }
        }
        StringBuilder a5 = j.a(str, "] ");
        a5.append(this.f12324a);
        return a5.toString();
    }
}
