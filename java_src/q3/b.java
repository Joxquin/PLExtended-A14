package q3;

import java.util.NoSuchElementException;
import kotlin.collections.u;
/* loaded from: classes.dex */
public final class b extends u {

    /* renamed from: d  reason: collision with root package name */
    public final int f12056d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12057e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f12058f;

    /* renamed from: g  reason: collision with root package name */
    public int f12059g;

    public b(int i4, int i5, int i6) {
        this.f12056d = i6;
        this.f12057e = i5;
        boolean z4 = true;
        if (i6 <= 0 ? i4 < i5 : i4 > i5) {
            z4 = false;
        }
        this.f12058f = z4;
        this.f12059g = z4 ? i4 : i5;
    }

    @Override // kotlin.collections.u
    public final int a() {
        int i4 = this.f12059g;
        if (i4 != this.f12057e) {
            this.f12059g = this.f12056d + i4;
        } else if (!this.f12058f) {
            throw new NoSuchElementException();
        } else {
            this.f12058f = false;
        }
        return i4;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12058f;
    }
}
