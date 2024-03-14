package K;
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    public final d f872a;

    public e(c cVar) {
        this.f872a = cVar;
    }

    public abstract boolean a();

    public final boolean b(CharSequence charSequence, int i4) {
        if (charSequence == null || i4 < 0 || charSequence.length() - i4 < 0) {
            throw new IllegalArgumentException();
        }
        d dVar = this.f872a;
        if (dVar == null) {
            return a();
        }
        int a4 = dVar.a(charSequence, i4);
        if (a4 != 0) {
            if (a4 != 1) {
                return a();
            }
            return false;
        }
        return true;
    }
}
