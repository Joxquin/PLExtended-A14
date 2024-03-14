package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.c;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
/* loaded from: classes.dex */
public abstract class RestrictedSuspendLambda extends RestrictedContinuationImpl implements g {
    private final int arity;

    public RestrictedSuspendLambda(c cVar) {
        super(cVar);
        this.arity = 2;
    }

    @Override // kotlin.jvm.internal.g
    public final int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final String toString() {
        if (getCompletion() == null) {
            j.f11265a.getClass();
            String a4 = k.a(this);
            h.d(a4, "renderLambdaToString(this)");
            return a4;
        }
        return super.toString();
    }
}
