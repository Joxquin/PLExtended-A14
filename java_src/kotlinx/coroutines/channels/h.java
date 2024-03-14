package kotlinx.coroutines.channels;
/* loaded from: classes.dex */
public final class h extends i {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f11375a;

    public h(Throwable th) {
        this.f11375a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            if (kotlin.jvm.internal.h.a(this.f11375a, ((h) obj).f11375a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Throwable th = this.f11375a;
        if (th != null) {
            return th.hashCode();
        }
        return 0;
    }

    @Override // kotlinx.coroutines.channels.i
    public final String toString() {
        return "Closed(" + this.f11375a + ")";
    }
}
