package v1;

import com.android.systemui.unfold.progress.RemoteUnfoldTransitionReceiver;
import java.util.concurrent.Executor;
/* renamed from: v1.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1435e implements d3.a {

    /* renamed from: a  reason: collision with root package name */
    public final d3.a f12636a;

    /* renamed from: b  reason: collision with root package name */
    public final d3.a f12637b;

    public C1435e(d3.a aVar, W2.b bVar) {
        this.f12636a = aVar;
        this.f12637b = bVar;
    }

    @Override // d3.a
    public final Object get() {
        return new RemoteUnfoldTransitionReceiver(((Boolean) this.f12636a.get()).booleanValue(), (Executor) this.f12637b.get());
    }
}
