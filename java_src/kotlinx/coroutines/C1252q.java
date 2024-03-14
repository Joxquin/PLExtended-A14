package kotlinx.coroutines;
/* renamed from: kotlinx.coroutines.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1252q {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f11508a;

    /* renamed from: b  reason: collision with root package name */
    public final t3.b f11509b;

    public C1252q(Throwable cause, boolean z4) {
        kotlin.jvm.internal.h.e(cause, "cause");
        this.f11508a = cause;
        this.f11509b = t3.c.a(z4);
    }

    public final String toString() {
        String a4 = D.a(this);
        return a4 + "[" + this.f11508a + "]";
    }
}
