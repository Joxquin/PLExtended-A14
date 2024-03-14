package B0;

import com.google.protobuf.E;
import com.google.protobuf.InterfaceC0774q0;
/* loaded from: classes.dex */
public final class a extends E implements InterfaceC0774q0 {
    public a() {
        super(b.a());
    }

    public final void a(Iterable iterable) {
        copyOnWrite();
        b.c((b) this.instance, iterable);
    }

    public final void b(Iterable iterable) {
        copyOnWrite();
        b.e((b) this.instance, iterable);
    }

    public final void c(long j4) {
        copyOnWrite();
        b.b((b) this.instance, j4);
    }

    public final void d(String str) {
        copyOnWrite();
        b.f((b) this.instance, str);
    }

    public final void e(long j4) {
        copyOnWrite();
        b.d((b) this.instance, j4);
    }
}
