package Q;

import android.graphics.Rect;
import java.util.Comparator;
/* loaded from: classes.dex */
public final class d implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public final Rect f1579a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    public final Rect f1580b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    public final boolean f1581c;

    /* renamed from: d  reason: collision with root package name */
    public final a f1582d;

    public d(boolean z4, a aVar) {
        this.f1581c = z4;
        this.f1582d = aVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Rect rect = this.f1579a;
        Rect rect2 = this.f1580b;
        this.f1582d.getClass();
        ((M.e) obj).e(rect);
        this.f1582d.getClass();
        ((M.e) obj2).e(rect2);
        int i4 = rect.top;
        int i5 = rect2.top;
        if (i4 < i5) {
            return -1;
        }
        if (i4 > i5) {
            return 1;
        }
        int i6 = rect.left;
        int i7 = rect2.left;
        if (i6 < i7) {
            return this.f1581c ? 1 : -1;
        } else if (i6 > i7) {
            return this.f1581c ? -1 : 1;
        } else {
            int i8 = rect.bottom;
            int i9 = rect2.bottom;
            if (i8 < i9) {
                return -1;
            }
            if (i8 > i9) {
                return 1;
            }
            int i10 = rect.right;
            int i11 = rect2.right;
            if (i10 < i11) {
                return this.f1581c ? 1 : -1;
            } else if (i10 > i11) {
                return this.f1581c ? -1 : 1;
            } else {
                return 0;
            }
        }
    }
}
