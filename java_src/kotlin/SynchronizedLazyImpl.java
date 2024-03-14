package kotlin;

import e3.c;
import e3.e;
import java.io.Serializable;
import kotlin.jvm.internal.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SynchronizedLazyImpl implements c, Serializable {
    private volatile Object _value;
    private m3.a initializer;
    private final Object lock;

    public SynchronizedLazyImpl(m3.a initializer) {
        h.e(initializer, "initializer");
        this.initializer = initializer;
        this._value = e.f9036a;
        this.lock = this;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // e3.c
    public final Object getValue() {
        Object obj;
        Object obj2 = this._value;
        e eVar = e.f9036a;
        if (obj2 != eVar) {
            return obj2;
        }
        synchronized (this.lock) {
            obj = this._value;
            if (obj == eVar) {
                m3.a aVar = this.initializer;
                h.b(aVar);
                obj = aVar.invoke();
                this._value = obj;
                this.initializer = null;
            }
        }
        return obj;
    }

    public final String toString() {
        return this._value != e.f9036a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
