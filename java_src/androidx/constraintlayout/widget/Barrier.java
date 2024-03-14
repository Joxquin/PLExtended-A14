package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import v.C1425a;
/* loaded from: classes.dex */
public class Barrier extends b {

    /* renamed from: k  reason: collision with root package name */
    public int f2766k;

    /* renamed from: l  reason: collision with root package name */
    public int f2767l;

    /* renamed from: m  reason: collision with root package name */
    public C1425a f2768m;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // androidx.constraintlayout.widget.b
    public final void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        this.f2768m = new C1425a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, w.f3021b);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = obtainStyledAttributes.getIndex(i4);
                if (index == 26) {
                    this.f2766k = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 25) {
                    this.f2768m.f12444v0 = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 27) {
                    this.f2768m.f12445w0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2788g = this.f2768m;
        n();
    }

    @Override // androidx.constraintlayout.widget.b
    public final void i(v.f fVar, boolean z4) {
        int i4 = this.f2766k;
        this.f2767l = i4;
        if (z4) {
            if (i4 == 5) {
                this.f2767l = 1;
            } else if (i4 == 6) {
                this.f2767l = 0;
            }
        } else if (i4 == 5) {
            this.f2767l = 0;
        } else if (i4 == 6) {
            this.f2767l = 1;
        }
        if (fVar instanceof C1425a) {
            ((C1425a) fVar).f12443u0 = this.f2767l;
        }
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        super.setVisibility(8);
    }
}
