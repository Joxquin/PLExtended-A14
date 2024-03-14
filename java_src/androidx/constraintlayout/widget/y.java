package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
/* loaded from: classes.dex */
public abstract class y extends b {

    /* renamed from: k  reason: collision with root package name */
    public boolean f3031k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3032l;

    public y(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.b
    public final void f(ConstraintLayout constraintLayout) {
        e(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.b
    public void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, w.f3021b);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = obtainStyledAttributes.getIndex(i4);
                if (index == 6) {
                    this.f3031k = true;
                } else if (index == 22) {
                    this.f3032l = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void o(v.n nVar, int i4, int i5) {
    }

    @Override // androidx.constraintlayout.widget.b, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f3031k || this.f3032l) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = getElevation();
                for (int i4 = 0; i4 < this.f2786e; i4++) {
                    View viewById = constraintLayout.getViewById(this.f2785d[i4]);
                    if (viewById != null) {
                        if (this.f3031k) {
                            viewById.setVisibility(visibility);
                        }
                        if (this.f3032l && elevation > 0.0f) {
                            viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void setElevation(float f4) {
        super.setElevation(f4);
        d();
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        super.setVisibility(i4);
        d();
    }

    public y(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public y(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
