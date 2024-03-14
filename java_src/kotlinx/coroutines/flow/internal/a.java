package kotlinx.coroutines.flow.internal;

import java.util.ArrayList;
import kotlin.collections.s;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.C;
import kotlinx.coroutines.D;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.p;
/* loaded from: classes.dex */
public abstract class a implements kotlinx.coroutines.flow.d {

    /* renamed from: a  reason: collision with root package name */
    public final i f11405a;

    /* renamed from: b  reason: collision with root package name */
    public final int f11406b;

    /* renamed from: c  reason: collision with root package name */
    public final BufferOverflow f11407c;

    public a(i iVar, int i4, BufferOverflow bufferOverflow) {
        this.f11405a = iVar;
        this.f11406b = i4;
        this.f11407c = bufferOverflow;
    }

    @Override // kotlinx.coroutines.flow.d
    public Object a(kotlinx.coroutines.flow.e eVar, kotlin.coroutines.c cVar) {
        Object a4 = C.a(new ChannelFlow$collect$2(null, eVar, this), cVar);
        return a4 == CoroutineSingletons.COROUTINE_SUSPENDED ? a4 : e3.f.f9037a;
    }

    public abstract Object c(p pVar, kotlin.coroutines.c cVar);

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f11247d;
        i iVar = this.f11405a;
        if (iVar != emptyCoroutineContext) {
            arrayList.add("context=" + iVar);
        }
        int i4 = this.f11406b;
        if (i4 != -3) {
            arrayList.add("capacity=" + i4);
        }
        BufferOverflow bufferOverflow = BufferOverflow.SUSPEND;
        BufferOverflow bufferOverflow2 = this.f11407c;
        if (bufferOverflow2 != bufferOverflow) {
            arrayList.add("onBufferOverflow=" + bufferOverflow2);
        }
        String a4 = D.a(this);
        String i5 = s.i(arrayList, ", ", null, null, null, 62);
        return a4 + "[" + i5 + "]";
    }
}
