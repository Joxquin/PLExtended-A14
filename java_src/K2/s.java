package K2;

import android.app.smartspace.SmartspaceTargetEvent;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class s implements n1.f {

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f1004g = Log.isLoggable("BcSmartspaceDataPlugin", 3);

    /* renamed from: d  reason: collision with root package name */
    public final Set f1005d = new HashSet();

    /* renamed from: e  reason: collision with root package name */
    public final List f1006e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public n1.d f1007f;

    public s() {
        new HashSet();
        new HashSet();
        this.f1007f = null;
    }

    @Override // n1.f
    public final void a(SmartspaceTargetEvent smartspaceTargetEvent) {
        n1.d dVar = this.f1007f;
        if (dVar != null) {
            dVar.a(smartspaceTargetEvent);
        }
    }

    @Override // n1.f
    public final void d(n1.e eVar) {
        ((HashSet) this.f1005d).add(eVar);
        eVar.a(this.f1006e);
    }

    @Override // n1.f
    public final void p(n1.e eVar) {
        ((HashSet) this.f1005d).remove(eVar);
    }
}
