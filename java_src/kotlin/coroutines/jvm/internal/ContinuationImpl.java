package kotlin.coroutines.jvm.internal;

import g3.a;
import kotlin.coroutines.c;
import kotlin.coroutines.d;
import kotlin.coroutines.e;
import kotlin.coroutines.g;
import kotlin.coroutines.i;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public abstract class ContinuationImpl extends BaseContinuationImpl {
    private final i _context;
    private transient c intercepted;

    public ContinuationImpl(c cVar, i iVar) {
        super(cVar);
        this._context = iVar;
    }

    @Override // kotlin.coroutines.c
    public i getContext() {
        i iVar = this._context;
        h.b(iVar);
        return iVar;
    }

    public final c intercepted() {
        c cVar = this.intercepted;
        if (cVar == null) {
            e eVar = (e) getContext().e(d.f11251d);
            if (eVar == null || (cVar = eVar.d(this)) == null) {
                cVar = this;
            }
            this.intercepted = cVar;
        }
        return cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        c cVar = this.intercepted;
        if (cVar != null && cVar != this) {
            i context = getContext();
            int i4 = e.f11252a;
            g e4 = context.e(d.f11251d);
            h.b(e4);
            ((e) e4).c(cVar);
        }
        this.intercepted = a.f9480d;
    }

    public ContinuationImpl(c cVar) {
        this(cVar, cVar != null ? cVar.getContext() : null);
    }
}
