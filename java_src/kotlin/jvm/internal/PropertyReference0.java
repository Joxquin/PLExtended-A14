package kotlin.jvm.internal;

import kotlinx.coroutines.D;
/* loaded from: classes.dex */
public abstract class PropertyReference0 extends PropertyReference implements r3.g {
    public PropertyReference0(Object obj) {
        super(obj, D.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final r3.b computeReflected() {
        j.f11265a.getClass();
        return this;
    }

    @Override // r3.g
    public final void getGetter() {
        ((r3.g) getReflected()).getGetter();
    }

    @Override // m3.a
    public final Object invoke() {
        return get();
    }
}
