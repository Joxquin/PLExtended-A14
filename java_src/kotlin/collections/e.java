package kotlin.collections;

import com.android.launcher3.util.C0479l;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class e extends f implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    public final f f11233d;

    /* renamed from: e  reason: collision with root package name */
    public final int f11234e;

    /* renamed from: f  reason: collision with root package name */
    public final int f11235f;

    public e(f list, int i4, int i5) {
        kotlin.jvm.internal.h.e(list, "list");
        this.f11233d = list;
        this.f11234e = i4;
        b.a(i4, i5, list.h());
        this.f11235f = i5 - i4;
    }

    @Override // java.util.List
    public final Object get(int i4) {
        int i5 = this.f11235f;
        if (i4 < 0 || i4 >= i5) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
        }
        return this.f11233d.get(this.f11234e + i4);
    }

    @Override // kotlin.collections.a
    public final int h() {
        return this.f11235f;
    }
}
