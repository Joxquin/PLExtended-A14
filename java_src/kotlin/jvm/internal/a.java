package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.u;
/* loaded from: classes.dex */
public final class a extends u {

    /* renamed from: d  reason: collision with root package name */
    public final int[] f11256d;

    /* renamed from: e  reason: collision with root package name */
    public int f11257e;

    public a(int[] iArr) {
        this.f11256d = iArr;
    }

    @Override // kotlin.collections.u
    public final int a() {
        try {
            int[] iArr = this.f11256d;
            int i4 = this.f11257e;
            this.f11257e = i4 + 1;
            return iArr[i4];
        } catch (ArrayIndexOutOfBoundsException e4) {
            this.f11257e--;
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11257e < this.f11256d.length;
    }
}
