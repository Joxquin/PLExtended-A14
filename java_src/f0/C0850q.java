package f0;

import android.content.Context;
import android.content.res.TypedArray;
import com.android.systemui.shared.R;
import e0.C0828a;
/* renamed from: f0.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0850q {

    /* renamed from: a  reason: collision with root package name */
    public final J f9217a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9218b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9219c;

    /* renamed from: d  reason: collision with root package name */
    public final int f9220d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9221e;

    /* renamed from: f  reason: collision with root package name */
    public final int f9222f;

    /* renamed from: g  reason: collision with root package name */
    public final int f9223g;

    /* renamed from: h  reason: collision with root package name */
    public final int f9224h;

    /* renamed from: i  reason: collision with root package name */
    public final int f9225i;

    /* renamed from: j  reason: collision with root package name */
    public final int f9226j;

    /* renamed from: k  reason: collision with root package name */
    public final int f9227k;

    /* renamed from: l  reason: collision with root package name */
    public final int f9228l;

    /* renamed from: m  reason: collision with root package name */
    public final int f9229m;

    /* renamed from: n  reason: collision with root package name */
    public final int f9230n;

    /* renamed from: o  reason: collision with root package name */
    public final int f9231o;

    /* renamed from: p  reason: collision with root package name */
    public final int f9232p;

    /* renamed from: q  reason: collision with root package name */
    public final int f9233q;

    /* renamed from: r  reason: collision with root package name */
    public final int f9234r;

    /* renamed from: s  reason: collision with root package name */
    public final int f9235s;

    /* renamed from: t  reason: collision with root package name */
    public final int f9236t;

    /* renamed from: u  reason: collision with root package name */
    public final boolean f9237u;

    /* renamed from: v  reason: collision with root package name */
    public final int f9238v;

    /* renamed from: w  reason: collision with root package name */
    public final Integer f9239w;

    /* renamed from: x  reason: collision with root package name */
    public final Integer f9240x;

    /* renamed from: y  reason: collision with root package name */
    public final Integer f9241y;

    public C0850q(Context context, J j4) {
        this.f9218b = -1;
        this.f9219c = -1;
        this.f9220d = -1;
        this.f9221e = -1;
        this.f9222f = -1;
        this.f9223g = -1;
        this.f9224h = -1;
        this.f9225i = -1;
        this.f9226j = -1;
        this.f9227k = -1;
        this.f9228l = -1;
        this.f9229m = -1;
        this.f9230n = -1;
        this.f9231o = -1;
        this.f9232p = -1;
        this.f9233q = -1;
        this.f9234r = -1;
        this.f9235s = -1;
        this.f9236t = -1;
        this.f9237u = false;
        this.f9217a = j4;
        this.f9238v = context.getResources().getDimensionPixelSize(R.dimen.abc_slice_small_image_size);
    }

    public static Integer a(TypedArray typedArray, int i4) {
        if (typedArray.hasValue(i4)) {
            return Integer.valueOf(typedArray.getColor(i4, 0));
        }
        return null;
    }

    public final int b() {
        Integer num = this.f9241y;
        return num != null ? num.intValue() : this.f9217a.f9106c;
    }

    public C0850q(Context context, int i4, J j4) {
        this.f9218b = -1;
        this.f9219c = -1;
        this.f9220d = -1;
        this.f9221e = -1;
        this.f9222f = -1;
        this.f9223g = -1;
        this.f9224h = -1;
        this.f9225i = -1;
        this.f9226j = -1;
        this.f9227k = -1;
        this.f9228l = -1;
        this.f9229m = -1;
        this.f9230n = -1;
        this.f9231o = -1;
        this.f9232p = -1;
        this.f9233q = -1;
        this.f9234r = -1;
        this.f9235s = -1;
        this.f9236t = -1;
        this.f9237u = false;
        this.f9217a = j4;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(i4, C0828a.f9007a);
        try {
            this.f9218b = (int) obtainStyledAttributes.getDimension(22, -1.0f);
            this.f9219c = (int) obtainStyledAttributes.getDimension(21, -1.0f);
            this.f9220d = (int) obtainStyledAttributes.getDimension(4, -1.0f);
            this.f9221e = (int) obtainStyledAttributes.getDimension(3, -1.0f);
            this.f9222f = (int) obtainStyledAttributes.getDimension(23, -1.0f);
            this.f9223g = (int) obtainStyledAttributes.getDimension(20, -1.0f);
            this.f9224h = (int) obtainStyledAttributes.getDimension(15, -1.0f);
            this.f9225i = (int) obtainStyledAttributes.getDimension(14, -1.0f);
            this.f9226j = (int) obtainStyledAttributes.getDimension(7, -1.0f);
            this.f9227k = (int) obtainStyledAttributes.getDimension(6, -1.0f);
            this.f9228l = (int) obtainStyledAttributes.getDimension(2, -1.0f);
            this.f9229m = (int) obtainStyledAttributes.getDimension(1, -1.0f);
            this.f9230n = (int) obtainStyledAttributes.getDimension(0, -1.0f);
            this.f9231o = (int) obtainStyledAttributes.getDimension(13, -1.0f);
            this.f9232p = (int) obtainStyledAttributes.getDimension(11, -1.0f);
            this.f9233q = (int) obtainStyledAttributes.getDimension(12, -1.0f);
            this.f9234r = (int) obtainStyledAttributes.getDimension(10, -1.0f);
            this.f9235s = (int) obtainStyledAttributes.getDimension(17, 10.0f);
            this.f9236t = (int) obtainStyledAttributes.getDimension(8, -1.0f);
            this.f9237u = obtainStyledAttributes.getBoolean(5, false);
            this.f9238v = (int) obtainStyledAttributes.getDimension(9, context.getResources().getDimensionPixelSize(R.dimen.abc_slice_small_image_size));
            this.f9239w = a(obtainStyledAttributes, 18);
            this.f9240x = a(obtainStyledAttributes, 19);
            this.f9241y = a(obtainStyledAttributes, 16);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
