package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import f.C0832a;
/* loaded from: classes.dex */
public final class R0 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f10821a;

    /* renamed from: b  reason: collision with root package name */
    public final TypedArray f10822b;

    /* renamed from: c  reason: collision with root package name */
    public TypedValue f10823c;

    public R0(Context context, TypedArray typedArray) {
        this.f10821a = context;
        this.f10822b = typedArray;
    }

    public static R0 m(Context context, AttributeSet attributeSet, int[] iArr, int i4) {
        return new R0(context, context.obtainStyledAttributes(attributeSet, iArr, i4, 0));
    }

    public final boolean a(int i4, boolean z4) {
        return this.f10822b.getBoolean(i4, z4);
    }

    public final ColorStateList b(int i4) {
        int resourceId;
        ColorStateList a4;
        TypedArray typedArray = this.f10822b;
        return (!typedArray.hasValue(i4) || (resourceId = typedArray.getResourceId(i4, 0)) == 0 || (a4 = B.c.a(resourceId, this.f10821a)) == null) ? typedArray.getColorStateList(i4) : a4;
    }

    public final int c(int i4, int i5) {
        return this.f10822b.getDimensionPixelOffset(i4, i5);
    }

    public final int d(int i4, int i5) {
        return this.f10822b.getDimensionPixelSize(i4, i5);
    }

    public final Drawable e(int i4) {
        int resourceId;
        TypedArray typedArray = this.f10822b;
        return (!typedArray.hasValue(i4) || (resourceId = typedArray.getResourceId(i4, 0)) == 0) ? typedArray.getDrawable(i4) : C0832a.a(resourceId, this.f10821a);
    }

    public final Drawable f(int i4) {
        int resourceId;
        Drawable f4;
        if (!this.f10822b.hasValue(i4) || (resourceId = this.f10822b.getResourceId(i4, 0)) == 0) {
            return null;
        }
        C1117A a4 = C1117A.a();
        Context context = this.f10821a;
        synchronized (a4) {
            f4 = a4.f10719a.f(context, true, resourceId);
        }
        return f4;
    }

    public final Typeface g(int i4, int i5, C1130c0 c1130c0) {
        int resourceId = this.f10822b.getResourceId(i4, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f10823c == null) {
            this.f10823c = new TypedValue();
        }
        TypedValue typedValue = this.f10823c;
        ThreadLocal threadLocal = D.n.f278a;
        Context context = this.f10821a;
        if (context.isRestricted()) {
            return null;
        }
        return D.n.b(context, resourceId, typedValue, i5, c1130c0, true, false);
    }

    public final int h(int i4, int i5) {
        return this.f10822b.getInt(i4, i5);
    }

    public final int i(int i4, int i5) {
        return this.f10822b.getResourceId(i4, i5);
    }

    public final String j(int i4) {
        return this.f10822b.getString(i4);
    }

    public final CharSequence k(int i4) {
        return this.f10822b.getText(i4);
    }

    public final boolean l(int i4) {
        return this.f10822b.hasValue(i4);
    }

    public final void n() {
        this.f10822b.recycle();
    }
}
