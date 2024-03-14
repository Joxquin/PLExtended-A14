package f0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.slice.SliceItem;
import com.android.systemui.shared.R;
import e0.C0828a;
import java.util.List;
/* loaded from: classes.dex */
public final class J {

    /* renamed from: A  reason: collision with root package name */
    public final int f9092A;

    /* renamed from: B  reason: collision with root package name */
    public final int f9093B;

    /* renamed from: C  reason: collision with root package name */
    public final int f9094C;

    /* renamed from: D  reason: collision with root package name */
    public final int f9095D;

    /* renamed from: E  reason: collision with root package name */
    public final int f9096E;

    /* renamed from: F  reason: collision with root package name */
    public final int f9097F;

    /* renamed from: G  reason: collision with root package name */
    public final boolean f9098G;

    /* renamed from: H  reason: collision with root package name */
    public final boolean f9099H;

    /* renamed from: I  reason: collision with root package name */
    public final int f9100I;

    /* renamed from: J  reason: collision with root package name */
    public final SparseArray f9101J = new SparseArray();

    /* renamed from: K  reason: collision with root package name */
    public final Context f9102K;

    /* renamed from: L  reason: collision with root package name */
    public final float f9103L;

    /* renamed from: a  reason: collision with root package name */
    public final int f9104a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9105b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9106c;

    /* renamed from: d  reason: collision with root package name */
    public final int f9107d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9108e;

    /* renamed from: f  reason: collision with root package name */
    public final int f9109f;

    /* renamed from: g  reason: collision with root package name */
    public final int f9110g;

    /* renamed from: h  reason: collision with root package name */
    public final int f9111h;

    /* renamed from: i  reason: collision with root package name */
    public final int f9112i;

    /* renamed from: j  reason: collision with root package name */
    public final int f9113j;

    /* renamed from: k  reason: collision with root package name */
    public final int f9114k;

    /* renamed from: l  reason: collision with root package name */
    public final int f9115l;

    /* renamed from: m  reason: collision with root package name */
    public final int f9116m;

    /* renamed from: n  reason: collision with root package name */
    public final int f9117n;

    /* renamed from: o  reason: collision with root package name */
    public final int f9118o;

    /* renamed from: p  reason: collision with root package name */
    public final int f9119p;

    /* renamed from: q  reason: collision with root package name */
    public final int f9120q;

    /* renamed from: r  reason: collision with root package name */
    public final int f9121r;

    /* renamed from: s  reason: collision with root package name */
    public final int f9122s;

    /* renamed from: t  reason: collision with root package name */
    public final int f9123t;

    /* renamed from: u  reason: collision with root package name */
    public final int f9124u;

    /* renamed from: v  reason: collision with root package name */
    public final int f9125v;

    /* renamed from: w  reason: collision with root package name */
    public final int f9126w;

    /* renamed from: x  reason: collision with root package name */
    public final int f9127x;

    /* renamed from: y  reason: collision with root package name */
    public final int f9128y;

    /* renamed from: z  reason: collision with root package name */
    public final int f9129z;

    public J(Context context, AttributeSet attributeSet, int i4, int i5) {
        this.f9104a = -1;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C0828a.f9008b, i4, i5);
        try {
            int color = obtainStyledAttributes.getColor(20, -1);
            this.f9104a = color != -1 ? color : -1;
            this.f9105b = obtainStyledAttributes.getColor(21, 0);
            this.f9106c = obtainStyledAttributes.getColor(17, 0);
            this.f9107d = (int) obtainStyledAttributes.getDimension(8, 0.0f);
            this.f9108e = (int) obtainStyledAttributes.getDimension(6, 0.0f);
            this.f9109f = (int) obtainStyledAttributes.getDimension(7, 0.0f);
            this.f9110g = (int) obtainStyledAttributes.getDimension(22, 0.0f);
            this.f9111h = (int) obtainStyledAttributes.getDimension(18, 0.0f);
            this.f9112i = (int) obtainStyledAttributes.getDimension(19, 0.0f);
            this.f9113j = (int) obtainStyledAttributes.getDimension(4, 0.0f);
            this.f9114k = (int) obtainStyledAttributes.getDimension(2, 0.0f);
            this.f9115l = (int) obtainStyledAttributes.getDimension(3, context.getResources().getDimensionPixelSize(R.dimen.abc_slice_grid_text_inner_padding));
            this.f9116m = (int) obtainStyledAttributes.getDimension(5, 0.0f);
            this.f9117n = (int) obtainStyledAttributes.getDimension(1, 0.0f);
            this.f9100I = obtainStyledAttributes.getResourceId(16, 0);
            this.f9121r = (int) obtainStyledAttributes.getDimension(13, context.getResources().getDimensionPixelSize(R.dimen.abc_slice_row_min_height));
            this.f9118o = (int) obtainStyledAttributes.getDimension(12, context.getResources().getDimensionPixelSize(R.dimen.abc_slice_row_max_height));
            this.f9122s = (int) obtainStyledAttributes.getDimension(14, context.getResources().getDimensionPixelSize(R.dimen.abc_slice_row_range_height));
            this.f9120q = (int) obtainStyledAttributes.getDimension(15, context.getResources().getDimensionPixelSize(R.dimen.abc_slice_row_range_single_text_height));
            this.f9126w = (int) obtainStyledAttributes.getDimension(11, context.getResources().getDimensionPixelSize(R.dimen.abc_slice_row_range_inline_height));
            this.f9098G = obtainStyledAttributes.getBoolean(0, false);
            this.f9099H = obtainStyledAttributes.getBoolean(9, false);
            this.f9102K = context;
            this.f9103L = obtainStyledAttributes.getDimension(10, 0.0f);
            obtainStyledAttributes.recycle();
            Resources resources = context.getResources();
            this.f9119p = resources.getDimensionPixelSize(R.dimen.abc_slice_row_range_multi_text_height);
            this.f9123t = resources.getDimensionPixelSize(R.dimen.abc_slice_row_selection_height);
            this.f9124u = resources.getDimensionPixelSize(R.dimen.abc_slice_row_selection_multi_text_height);
            this.f9125v = resources.getDimensionPixelSize(R.dimen.abc_slice_row_selection_single_text_height);
            this.f9127x = resources.getDimensionPixelSize(R.dimen.abc_slice_big_pic_min_height);
            this.f9128y = resources.getDimensionPixelSize(R.dimen.abc_slice_big_pic_max_height);
            this.f9129z = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_image_only_height);
            this.f9092A = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_image_text_height);
            this.f9093B = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_raw_image_text_offset);
            this.f9095D = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_min_height);
            this.f9094C = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_max_height);
            this.f9096E = resources.getDimensionPixelSize(R.dimen.abc_slice_row_min_height);
            this.f9097F = resources.getDimensionPixelSize(R.dimen.abc_slice_large_height);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final int a(List list, O o4) {
        if (list == null) {
            return 0;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            G g4 = (G) list.get(i5);
            if (i5 != 0 || !c(list)) {
                i4 = g4.a(this, o4) + i4;
            }
        }
        return i4;
    }

    public final C0850q b(SliceItem sliceItem) {
        Context context = this.f9102K;
        int i4 = this.f9100I;
        if (i4 == 0) {
            return new C0850q(context, this);
        }
        SparseArray sparseArray = this.f9101J;
        C0850q c0850q = (C0850q) sparseArray.get(i4);
        if (c0850q == null) {
            C0850q c0850q2 = new C0850q(context, i4, this);
            sparseArray.put(i4, c0850q2);
            return c0850q2;
        }
        return c0850q;
    }

    public final boolean c(List list) {
        return this.f9099H && list.size() > 1 && (list.get(0) instanceof C0849p) && ((C0849p) list.get(0)).f9212o;
    }
}
