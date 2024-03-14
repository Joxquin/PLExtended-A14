package kotlin.collections;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class l implements kotlin.sequences.g {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int[] f11242a;

    public l(int[] iArr) {
        this.f11242a = iArr;
    }

    @Override // kotlin.sequences.g
    public final Iterator iterator() {
        int[] array = this.f11242a;
        kotlin.jvm.internal.h.e(array, "array");
        return new kotlin.jvm.internal.a(array);
    }
}
