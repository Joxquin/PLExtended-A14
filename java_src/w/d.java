package W;

import android.util.Log;
import androidx.lifecycle.N;
import q.n;
/* loaded from: classes.dex */
public final class d extends N {

    /* renamed from: e  reason: collision with root package name */
    public static final c f1868e = new c();

    /* renamed from: d  reason: collision with root package name */
    public final n f1869d = new n();

    @Override // androidx.lifecycle.N
    public final void b() {
        n nVar = this.f1869d;
        int i4 = nVar.f11970f;
        if (i4 > 0) {
            b bVar = (b) nVar.f11969e[0];
            bVar.getClass();
            if (Log.isLoggable("LoaderManager", 3)) {
                Log.d("LoaderManager", "  Destroying: " + bVar);
            }
            throw null;
        }
        Object[] objArr = nVar.f11969e;
        for (int i5 = 0; i5 < i4; i5++) {
            objArr[i5] = null;
        }
        nVar.f11970f = 0;
    }
}
