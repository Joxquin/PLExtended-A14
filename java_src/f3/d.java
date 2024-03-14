package f3;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.builders.MapBuilder;
/* loaded from: classes.dex */
public final class d extends f implements Iterator {

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f9351g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(MapBuilder map, int i4) {
        super(map);
        this.f9351g = i4;
        if (i4 == 1) {
            kotlin.jvm.internal.h.e(map, "map");
            super(map);
        } else if (i4 != 2) {
            kotlin.jvm.internal.h.e(map, "map");
        } else {
            kotlin.jvm.internal.h.e(map, "map");
            super(map);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i4;
        Object[] objArr;
        int i5;
        int i6;
        Object[] objArr2;
        int i7 = this.f9351g;
        MapBuilder mapBuilder = this.f9354d;
        switch (i7) {
            case 0:
                int i8 = this.f9355e;
                i5 = mapBuilder.length;
                if (i8 < i5) {
                    int i9 = this.f9355e;
                    this.f9355e = i9 + 1;
                    this.f9356f = i9;
                    e eVar = new e(mapBuilder, i9);
                    a();
                    return eVar;
                }
                throw new NoSuchElementException();
            case 1:
                int i10 = this.f9355e;
                i6 = mapBuilder.length;
                if (i10 < i6) {
                    int i11 = this.f9355e;
                    this.f9355e = i11 + 1;
                    this.f9356f = i11;
                    objArr2 = mapBuilder.keysArray;
                    Object obj = objArr2[this.f9356f];
                    a();
                    return obj;
                }
                throw new NoSuchElementException();
            default:
                int i12 = this.f9355e;
                i4 = mapBuilder.length;
                if (i12 < i4) {
                    int i13 = this.f9355e;
                    this.f9355e = i13 + 1;
                    this.f9356f = i13;
                    objArr = mapBuilder.valuesArray;
                    kotlin.jvm.internal.h.b(objArr);
                    Object obj2 = objArr[this.f9356f];
                    a();
                    return obj2;
                }
                throw new NoSuchElementException();
        }
    }
}
