package kotlin.sequences;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class d implements g {

    /* renamed from: a  reason: collision with root package name */
    public final g f11276a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f11277b;

    /* renamed from: c  reason: collision with root package name */
    public final m3.l f11278c;

    public d(g gVar, boolean z4, m3.l lVar) {
        this.f11276a = gVar;
        this.f11277b = z4;
        this.f11278c = lVar;
    }

    @Override // kotlin.sequences.g
    public final Iterator iterator() {
        return new c(this);
    }
}
