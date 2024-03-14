package u3;

import kotlin.coroutines.i;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.C1259y;
import kotlinx.coroutines.InterfaceC1260z;
/* loaded from: classes.dex */
public final class b extends kotlin.coroutines.a implements InterfaceC1260z {
    private volatile Object _preHandler;

    public b() {
        super(C1259y.f11522d);
        this._preHandler = this;
    }

    @Override // kotlinx.coroutines.InterfaceC1260z
    public void y(i context, Throwable exception) {
        h.e(context, "context");
        h.e(exception, "exception");
    }
}
