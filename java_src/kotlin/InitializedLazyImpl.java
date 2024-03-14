package kotlin;

import e3.c;
import java.io.Serializable;
/* loaded from: classes.dex */
public final class InitializedLazyImpl implements c, Serializable {
    private final Object value;

    public InitializedLazyImpl(Object obj) {
        this.value = obj;
    }

    @Override // e3.c
    public final Object getValue() {
        return this.value;
    }

    public final String toString() {
        return String.valueOf(this.value);
    }
}
