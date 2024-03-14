package f3;

import kotlin.collections.builders.MapBuilder;
/* loaded from: classes.dex */
public class f {

    /* renamed from: d  reason: collision with root package name */
    public final MapBuilder f9354d;

    /* renamed from: e  reason: collision with root package name */
    public int f9355e;

    /* renamed from: f  reason: collision with root package name */
    public int f9356f;

    public f(MapBuilder map) {
        kotlin.jvm.internal.h.e(map, "map");
        this.f9354d = map;
        this.f9356f = -1;
        a();
    }

    public final void a() {
        int i4;
        int[] iArr;
        while (true) {
            int i5 = this.f9355e;
            MapBuilder mapBuilder = this.f9354d;
            i4 = mapBuilder.length;
            if (i5 >= i4) {
                return;
            }
            iArr = mapBuilder.presenceArray;
            int i6 = this.f9355e;
            if (iArr[i6] >= 0) {
                return;
            }
            this.f9355e = i6 + 1;
        }
    }

    public final boolean hasNext() {
        int i4;
        int i5 = this.f9355e;
        i4 = this.f9354d.length;
        return i5 < i4;
    }

    public final void remove() {
        if (!(this.f9356f != -1)) {
            throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
        }
        MapBuilder mapBuilder = this.f9354d;
        mapBuilder.i();
        mapBuilder.s(this.f9356f);
        this.f9356f = -1;
    }
}
