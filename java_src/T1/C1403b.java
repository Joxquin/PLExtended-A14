package t1;

import com.android.systemui.unfold.progress.RemoteUnfoldTransitionReceiver;
import java.util.Optional;
import kotlin.jvm.internal.h;
import u1.InterfaceC1423a;
import v1.C1435e;
import x1.C1457a;
/* renamed from: t1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1403b implements d3.a {

    /* renamed from: a  reason: collision with root package name */
    public final C1402a f12346a;

    /* renamed from: b  reason: collision with root package name */
    public final d3.a f12347b;

    /* renamed from: c  reason: collision with root package name */
    public final d3.a f12348c;

    /* renamed from: d  reason: collision with root package name */
    public final d3.a f12349d;

    public C1403b(C1402a c1402a, d3.a aVar, d3.a aVar2, C1435e c1435e) {
        this.f12346a = c1402a;
        this.f12347b = aVar;
        this.f12348c = aVar2;
        this.f12349d = c1435e;
    }

    @Override // d3.a
    public final Object get() {
        InterfaceC1423a config = (InterfaceC1423a) this.f12347b.get();
        C1457a traceListener = (C1457a) this.f12348c.get();
        this.f12346a.getClass();
        h.e(config, "config");
        h.e(traceListener, "traceListener");
        d3.a remoteReceiverProvider = this.f12349d;
        h.e(remoteReceiverProvider, "remoteReceiverProvider");
        if (!config.isEnabled()) {
            Optional empty = Optional.empty();
            h.d(empty, "empty()");
            return empty;
        }
        RemoteUnfoldTransitionReceiver remoteUnfoldTransitionReceiver = (RemoteUnfoldTransitionReceiver) remoteReceiverProvider.get();
        remoteUnfoldTransitionReceiver.addCallback((InterfaceC1405d) traceListener);
        Optional of = Optional.of(remoteUnfoldTransitionReceiver);
        h.d(of, "of(remoteReceiver)");
        return of;
    }
}
