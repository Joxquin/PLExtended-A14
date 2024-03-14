package x3;

import java.util.RandomAccess;
import okio.ByteString;
/* loaded from: classes.dex */
public final class h extends kotlin.collections.f implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    public final ByteString[] f12896d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f12897e;

    public h(ByteString[] byteStringArr, int[] iArr) {
        this.f12896d = byteStringArr;
        this.f12897e = iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0172, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final x3.h i(okio.ByteString... r14) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x3.h.i(okio.ByteString[]):x3.h");
    }

    @Override // kotlin.collections.a, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return super.contains((ByteString) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i4) {
        return this.f12896d[i4];
    }

    @Override // kotlin.collections.a
    public final int h() {
        return this.f12896d.length;
    }

    @Override // kotlin.collections.f, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.f, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.lastIndexOf((ByteString) obj);
        }
        return -1;
    }
}
