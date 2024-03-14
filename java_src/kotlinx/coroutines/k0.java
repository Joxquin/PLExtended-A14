package kotlinx.coroutines;
/* loaded from: classes.dex */
public abstract class k0 extends AbstractC1258x {
    public abstract k0 D();

    @Override // kotlinx.coroutines.AbstractC1258x
    public String toString() {
        k0 k0Var;
        String str;
        v3.d dVar = J.f11307a;
        k0 k0Var2 = kotlinx.coroutines.internal.v.f11495a;
        if (this == k0Var2) {
            str = "Dispatchers.Main";
        } else {
            try {
                k0Var = k0Var2.D();
            } catch (UnsupportedOperationException unused) {
                k0Var = null;
            }
            str = this == k0Var ? "Dispatchers.Main.immediate" : null;
        }
        if (str == null) {
            return D.a(this) + "@" + D.b(this);
        }
        return str;
    }
}
