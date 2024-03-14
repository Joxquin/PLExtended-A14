package kotlin.random;

import java.io.Serializable;
import o3.d;
/* loaded from: classes.dex */
public final class Random$Default extends d implements Serializable {

    /* loaded from: classes.dex */
    final class Serialized implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        public static final Serialized f11267d = new Serialized();
        private static final long serialVersionUID = 0;

        private Serialized() {
        }

        private final Object readResolve() {
            return d.f11877d;
        }
    }

    public /* synthetic */ Random$Default(int i4) {
        this();
    }

    private final Object writeReplace() {
        return Serialized.f11267d;
    }

    @Override // o3.d
    public final int a() {
        return d.f11878e.a();
    }

    private Random$Default() {
    }
}
