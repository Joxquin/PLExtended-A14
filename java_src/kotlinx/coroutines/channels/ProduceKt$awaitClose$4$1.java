package kotlinx.coroutines.channels;

import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.C1232h;
import kotlinx.coroutines.InterfaceC1231g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ProduceKt$awaitClose$4$1 extends Lambda implements m3.l {
    final /* synthetic */ InterfaceC1231g $cont;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProduceKt$awaitClose$4$1(C1232h c1232h) {
        super(1);
        this.$cont = c1232h;
    }

    @Override // m3.l
    public final Object invoke(Object obj) {
        Throwable th = (Throwable) obj;
        InterfaceC1231g interfaceC1231g = this.$cont;
        e3.f fVar = e3.f.f9037a;
        interfaceC1231g.resumeWith(fVar);
        return fVar;
    }
}
