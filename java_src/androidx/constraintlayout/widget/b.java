package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes.dex */
public abstract class b extends View {

    /* renamed from: d  reason: collision with root package name */
    public int[] f2785d;

    /* renamed from: e  reason: collision with root package name */
    public int f2786e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f2787f;

    /* renamed from: g  reason: collision with root package name */
    public v.l f2788g;

    /* renamed from: h  reason: collision with root package name */
    public String f2789h;

    /* renamed from: i  reason: collision with root package name */
    public String f2790i;

    /* renamed from: j  reason: collision with root package name */
    public final HashMap f2791j;

    public b(Context context) {
        super(context);
        this.f2785d = new int[32];
        this.f2791j = new HashMap();
        this.f2787f = context;
        h(null);
    }

    public final void a(String str) {
        if (str == null || str.length() == 0 || this.f2787f == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i4 = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, trim);
            if (designInformation instanceof Integer) {
                i4 = ((Integer) designInformation).intValue();
            }
        }
        if (i4 == 0 && constraintLayout != null) {
            i4 = g(constraintLayout, trim);
        }
        if (i4 == 0) {
            try {
                i4 = v.class.getField(trim).getInt(null);
            } catch (Exception unused) {
            }
        }
        if (i4 == 0) {
            i4 = this.f2787f.getResources().getIdentifier(trim, "id", this.f2787f.getPackageName());
        }
        if (i4 != 0) {
            this.f2791j.put(Integer.valueOf(i4), trim);
            b(i4);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    public final void b(int i4) {
        if (i4 == getId()) {
            return;
        }
        int i5 = this.f2786e + 1;
        int[] iArr = this.f2785d;
        if (i5 > iArr.length) {
            this.f2785d = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f2785d;
        int i6 = this.f2786e;
        iArr2[i6] = i4;
        this.f2786e = i6 + 1;
    }

    public final void c(String str) {
        if (str == null || str.length() == 0 || this.f2787f == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = constraintLayout.getChildAt(i4);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof d) && trim.equals(((d) layoutParams).f2817Y)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    b(childAt.getId());
                }
            }
        }
    }

    public final void d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        e((ConstraintLayout) parent);
    }

    public final void e(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i4 = 0; i4 < this.f2786e; i4++) {
            View viewById = constraintLayout.getViewById(this.f2785d[i4]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    public void f(ConstraintLayout constraintLayout) {
    }

    public final int g(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String str2;
        if (str == null || constraintLayout == null || (resources = this.f2787f.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = constraintLayout.getChildAt(i4);
            if (childAt.getId() != -1) {
                try {
                    str2 = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    str2 = null;
                }
                if (str.equals(str2)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    public void h(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, w.f3021b);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = obtainStyledAttributes.getIndex(i4);
                if (index == 35) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f2789h = string;
                    j(string);
                } else if (index == 36) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f2790i = string2;
                    k(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void i(v.f fVar, boolean z4) {
    }

    public final void j(String str) {
        this.f2789h = str;
        if (str == null) {
            return;
        }
        int i4 = 0;
        this.f2786e = 0;
        while (true) {
            int indexOf = str.indexOf(44, i4);
            if (indexOf == -1) {
                a(str.substring(i4));
                return;
            } else {
                a(str.substring(i4, indexOf));
                i4 = indexOf + 1;
            }
        }
    }

    public final void k(String str) {
        this.f2790i = str;
        if (str == null) {
            return;
        }
        int i4 = 0;
        this.f2786e = 0;
        while (true) {
            int indexOf = str.indexOf(44, i4);
            if (indexOf == -1) {
                c(str.substring(i4));
                return;
            } else {
                c(str.substring(i4, indexOf));
                i4 = indexOf + 1;
            }
        }
    }

    public final void l(int[] iArr) {
        this.f2789h = null;
        this.f2786e = 0;
        for (int i4 : iArr) {
            b(i4);
        }
    }

    public void m() {
    }

    public final void n() {
        if (this.f2788g == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof d) {
            ((d) layoutParams).f2852q0 = this.f2788g;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f2789h;
        if (str != null) {
            j(str);
        }
        String str2 = this.f2790i;
        if (str2 != null) {
            k(str2);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i4, int i5) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public final void setTag(int i4, Object obj) {
        super.setTag(i4, obj);
        if (obj == null && this.f2789h == null) {
            b(i4);
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2785d = new int[32];
        this.f2791j = new HashMap();
        this.f2787f = context;
        h(attributeSet);
    }

    public b(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f2785d = new int[32];
        this.f2791j = new HashMap();
        this.f2787f = context;
        h(attributeSet);
    }
}
