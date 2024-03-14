package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.c;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
/* loaded from: classes.dex */
public abstract class SuspendLambda extends ContinuationImpl implements g {
    private final int arity;

    public SuspendLambda(int i4, c cVar) {
        super(cVar);
        this.arity = i4;
    }

    @Override // kotlin.jvm.internal.g
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public String toString() {
        if (getCompletion() == null) {
            j.f11265a.getClass();
            String a4 = k.a(this);
            h.d(a4, "renderLambdaToString(this)");
            return a4;
        }
        return super.toString();
    }

    public SuspendLambda(int i4) {
        this(i4, null);
    }
}
