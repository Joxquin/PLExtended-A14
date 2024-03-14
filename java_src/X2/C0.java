package X2;

import com.google.common.collect.ImmutableMap;
import java.net.URI;
/* loaded from: classes.dex */
public final class C0 extends x0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ E0 f2092a;

    public C0(E0 e02) {
        this.f2092a = e02;
    }

    @Override // X2.x0
    public final String b() {
        String str;
        synchronized (this.f2092a) {
            str = this.f2092a.f2103b;
        }
        return str;
    }

    @Override // X2.x0
    public final A0 c(URI uri, v0 v0Var) {
        ImmutableMap immutableMap;
        E0 e02 = this.f2092a;
        synchronized (e02) {
            immutableMap = e02.f2105d;
        }
        B0 b02 = (B0) immutableMap.get(uri.getScheme());
        if (b02 == null) {
            return null;
        }
        return b02.c(uri, v0Var);
    }
}
