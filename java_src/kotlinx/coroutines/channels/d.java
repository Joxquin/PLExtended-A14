package kotlinx.coroutines.channels;

import kotlinx.coroutines.InterfaceC1231g;
import kotlinx.coroutines.internal.E;
import kotlinx.coroutines.internal.F;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final k f11353a = new k(-1, null, null, 0);

    /* renamed from: b  reason: collision with root package name */
    public static final int f11354b = F.c("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12);

    /* renamed from: c  reason: collision with root package name */
    public static final int f11355c = F.c("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12);

    /* renamed from: d  reason: collision with root package name */
    public static final E f11356d = new E("BUFFERED");

    /* renamed from: e  reason: collision with root package name */
    public static final E f11357e = new E("SHOULD_BUFFER");

    /* renamed from: f  reason: collision with root package name */
    public static final E f11358f = new E("S_RESUMING_BY_RCV");

    /* renamed from: g  reason: collision with root package name */
    public static final E f11359g = new E("RESUMING_BY_EB");

    /* renamed from: h  reason: collision with root package name */
    public static final E f11360h = new E("POISONED");

    /* renamed from: i  reason: collision with root package name */
    public static final E f11361i = new E("DONE_RCV");

    /* renamed from: j  reason: collision with root package name */
    public static final E f11362j = new E("INTERRUPTED_SEND");

    /* renamed from: k  reason: collision with root package name */
    public static final E f11363k = new E("INTERRUPTED_RCV");

    /* renamed from: l  reason: collision with root package name */
    public static final E f11364l = new E("CHANNEL_CLOSED");

    /* renamed from: m  reason: collision with root package name */
    public static final E f11365m = new E("SUSPEND");

    /* renamed from: n  reason: collision with root package name */
    public static final E f11366n = new E("SUSPEND_NO_WAITER");

    /* renamed from: o  reason: collision with root package name */
    public static final E f11367o = new E("FAILED");

    /* renamed from: p  reason: collision with root package name */
    public static final E f11368p = new E("NO_RECEIVE_RESULT");

    /* renamed from: q  reason: collision with root package name */
    public static final E f11369q = new E("CLOSE_HANDLER_CLOSED");

    /* renamed from: r  reason: collision with root package name */
    public static final E f11370r = new E("CLOSE_HANDLER_INVOKED");

    /* renamed from: s  reason: collision with root package name */
    public static final E f11371s = new E("NO_CLOSE_CAUSE");

    public static final boolean a(InterfaceC1231g interfaceC1231g, Object obj, m3.l lVar) {
        E f4 = interfaceC1231g.f(obj, lVar);
        if (f4 != null) {
            interfaceC1231g.w(f4);
            return true;
        }
        return false;
    }
}
