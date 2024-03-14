package kotlinx.coroutines.internal;
/* renamed from: kotlinx.coroutines.internal.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1235b {

    /* renamed from: a  reason: collision with root package name */
    public static final E f11460a = new E("CLOSED");

    public static final Object a(B b4, long j4, m3.p createNewSegment) {
        kotlin.jvm.internal.h.e(createNewSegment, "createNewSegment");
        while (true) {
            if (b4.f11440f >= j4 && !b4.c()) {
                return b4;
            }
            Object obj = b4.f11461d.f12366b;
            E e4 = f11460a;
            if (obj == e4) {
                return e4;
            }
            B b5 = (B) ((AbstractC1236c) obj);
            if (b5 == null) {
                b5 = (B) createNewSegment.invoke(Long.valueOf(b4.f11440f + 1), b4);
                if (b4.f11461d.a(null, b5)) {
                    if (b4.c()) {
                        b4.d();
                    }
                }
            }
            b4 = b5;
        }
    }
}
