package kotlin.sequences;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class f implements g {

    /* renamed from: a  reason: collision with root package name */
    public final m3.a f11282a;

    /* renamed from: b  reason: collision with root package name */
    public final m3.l f11283b;

    public f(m3.a aVar, m3.l getNextValue) {
        kotlin.jvm.internal.h.e(getNextValue, "getNextValue");
        this.f11282a = aVar;
        this.f11283b = getNextValue;
    }

    @Override // kotlin.sequences.g
    public final Iterator iterator() {
        return new e(this);
    }
}
