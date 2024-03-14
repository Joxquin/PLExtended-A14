package f0;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.SliceItem;
import d0.C0797e;
import java.util.ArrayList;
import java.util.List;
/* renamed from: f0.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0838e extends G {

    /* renamed from: f  reason: collision with root package name */
    public boolean f9168f;

    /* renamed from: g  reason: collision with root package name */
    public SliceItem f9169g;

    /* renamed from: h  reason: collision with root package name */
    public final ArrayList f9170h;

    /* renamed from: i  reason: collision with root package name */
    public SliceItem f9171i;

    /* renamed from: j  reason: collision with root package name */
    public int f9172j;

    /* renamed from: k  reason: collision with root package name */
    public int f9173k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f9174l;

    /* renamed from: m  reason: collision with root package name */
    public IconCompat f9175m;

    /* renamed from: n  reason: collision with root package name */
    public Point f9176n;

    /* renamed from: o  reason: collision with root package name */
    public SliceItem f9177o;

    public C0838e(SliceItem sliceItem, int i4) {
        super(sliceItem, i4);
        List b4;
        this.f9170h = new ArrayList();
        this.f9173k = 5;
        this.f9175m = null;
        this.f9176n = null;
        SliceItem d4 = C0797e.d(sliceItem, null, "see_more");
        this.f9171i = d4;
        if (d4 != null && "slice".equals(d4.f4057b) && (b4 = this.f9171i.g().b()) != null && b4.size() > 0) {
            this.f9171i = (SliceItem) b4.get(0);
        }
        this.f9169g = C0797e.e(sliceItem, "slice", new String[]{"shortcut", "title"}, new String[]{"actions"});
        this.f9168f = true;
        if ("slice".equals(sliceItem.f4057b)) {
            List b5 = sliceItem.g().b();
            ArrayList arrayList = new ArrayList();
            for (int i5 = 0; i5 < b5.size(); i5++) {
                SliceItem sliceItem2 = (SliceItem) b5.get(i5);
                boolean z4 = (C0797e.d(sliceItem2, null, "see_more") != null) || sliceItem2.h("shortcut", "see_more", "keywords", "ttl", "last_updated", "overlay");
                if ("content_description".equals(sliceItem2.f4058c)) {
                    this.f9088d = sliceItem2;
                } else if (!z4) {
                    arrayList.add(sliceItem2);
                }
            }
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                SliceItem sliceItem3 = (SliceItem) arrayList.get(i6);
                if (!"content_description".equals(sliceItem3.f4058c)) {
                    f(new C0837d(sliceItem3));
                }
            }
        } else {
            f(new C0837d(sliceItem));
        }
        e();
    }

    @Override // f0.G
    public final int a(J j4, O o4) {
        int i4;
        j4.getClass();
        int i5 = 0;
        boolean z4 = o4.f9134c == 1;
        if (e()) {
            int i6 = this.f9173k;
            boolean z5 = this.f9168f;
            Context context = j4.f9102K;
            if (!z5) {
                boolean z6 = this.f9172j > 1;
                boolean z7 = this.f9175m != null;
                boolean z8 = i6 == 0 || i6 == 5;
                if (i6 == 4) {
                    i4 = d(context).y + ((z6 ? 2 : 1) * j4.f9093B);
                } else if (!z6 || z4) {
                    if (!z8) {
                        i4 = j4.f9092A;
                    }
                    i4 = j4.f9095D;
                } else {
                    if (z7) {
                        i4 = j4.f9094C;
                    }
                    i4 = j4.f9095D;
                }
            } else if (this.f9170h.size() == 1) {
                i4 = z4 ? j4.f9127x : j4.f9128y;
            } else {
                if (i6 != 0) {
                    i4 = i6 == 4 ? d(context).y : j4.f9129z;
                }
                i4 = j4.f9095D;
            }
            boolean z9 = this.f9168f;
            int i7 = (z9 && this.f9089e == 0) ? j4.f9116m : 0;
            if (z9 && this.f9174l) {
                i5 = j4.f9117n;
            }
            return i5 + i4 + i7;
        }
        return 0;
    }

    public final Point d(Context context) {
        IconCompat iconCompat = this.f9175m;
        if (iconCompat == null) {
            return new Point(-1, -1);
        }
        if (this.f9176n == null) {
            Drawable h4 = iconCompat.h(context);
            this.f9176n = new Point(h4.getIntrinsicWidth(), h4.getIntrinsicHeight());
        }
        return this.f9176n;
    }

    public final boolean e() {
        return (this.f9085a != null) && this.f9170h.size() > 0;
    }

    public final void f(C0837d c0837d) {
        SliceItem sliceItem;
        SliceItem sliceItem2 = c0837d.f9158b;
        ArrayList arrayList = c0837d.f9159c;
        if (sliceItem2 != null || (arrayList.size() > 0 && arrayList.size() <= 3)) {
            if (this.f9177o == null && (sliceItem = c0837d.f9166j) != null) {
                this.f9177o = sliceItem;
            }
            this.f9170h.add(c0837d);
            if (!(arrayList.size() == 1 && "image".equals(((SliceItem) arrayList.get(0)).f4057b))) {
                this.f9168f = false;
            }
            this.f9172j = Math.max(this.f9172j, c0837d.f9161e);
            if (this.f9175m == null) {
                IconCompat iconCompat = c0837d.f9163g;
                if (iconCompat != null) {
                    this.f9175m = iconCompat;
                }
            }
            int i4 = this.f9173k;
            this.f9173k = i4 == 5 ? c0837d.f9165i : Math.max(i4, c0837d.f9165i);
        }
    }
}
