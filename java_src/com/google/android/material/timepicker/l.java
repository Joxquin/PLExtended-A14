package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import i2.C0980a;
import java.util.HashMap;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class l extends ConstraintLayout {

    /* renamed from: d  reason: collision with root package name */
    public final k f8217d;

    /* renamed from: e  reason: collision with root package name */
    public int f8218e;

    /* renamed from: f  reason: collision with root package name */
    public C2.i f8219f;

    public l(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i4, layoutParams);
        if (view.getId() == -1) {
            WeakHashMap weakHashMap = J.f3079a;
            view.setId(C0187y.a());
        }
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f8217d);
            handler.post(this.f8217d);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        r();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f8217d);
            handler.post(this.f8217d);
        }
    }

    public final void r() {
        int childCount = getChildCount();
        int i4 = 1;
        for (int i5 = 0; i5 < childCount; i5++) {
            if ("skip".equals(getChildAt(i5).getTag())) {
                i4++;
            }
        }
        androidx.constraintlayout.widget.q qVar = new androidx.constraintlayout.widget.q();
        qVar.c(this);
        float f4 = 0.0f;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int id = childAt.getId();
                int i7 = this.f8218e;
                HashMap hashMap = qVar.f3004c;
                if (!hashMap.containsKey(Integer.valueOf(id))) {
                    hashMap.put(Integer.valueOf(id), new androidx.constraintlayout.widget.l());
                }
                androidx.constraintlayout.widget.m mVar = ((androidx.constraintlayout.widget.l) hashMap.get(Integer.valueOf(id))).f2900d;
                mVar.f2970z = R.id.circle_center;
                mVar.f2904A = i7;
                mVar.f2905B = f4;
                f4 = (360.0f / (childCount - i4)) + f4;
            }
        }
        qVar.a(this);
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i4) {
        this.f8219f.l(ColorStateList.valueOf(i4));
    }

    public l(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.material.timepicker.k] */
    public l(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        C2.i iVar = new C2.i();
        this.f8219f = iVar;
        C2.k kVar = new C2.k(0.5f);
        C2.n nVar = iVar.f160d.f137a;
        nVar.getClass();
        C2.m mVar = new C2.m(nVar);
        mVar.f189e = kVar;
        mVar.f190f = kVar;
        mVar.f191g = kVar;
        mVar.f192h = kVar;
        iVar.b(new C2.n(mVar));
        this.f8219f.l(ColorStateList.valueOf(-1));
        C2.i iVar2 = this.f8219f;
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.m(this, iVar2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9647w, i4, 0);
        this.f8218e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f8217d = new Runnable() { // from class: com.google.android.material.timepicker.k
            @Override // java.lang.Runnable
            public final void run() {
                l.this.r();
            }
        };
        obtainStyledAttributes.recycle();
    }
}
