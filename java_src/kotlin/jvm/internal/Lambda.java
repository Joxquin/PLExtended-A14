package kotlin.jvm.internal;

import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class Lambda implements g, Serializable {
    private final int arity;

    public Lambda(int i4) {
        this.arity = i4;
    }

    @Override // kotlin.jvm.internal.g
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        j.f11265a.getClass();
        String a4 = k.a(this);
        h.d(a4, "renderLambdaToString(this)");
        return a4;
    }
}
