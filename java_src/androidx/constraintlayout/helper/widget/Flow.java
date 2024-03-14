package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.w;
import androidx.constraintlayout.widget.y;
import v.f;
import v.i;
import v.n;
/* loaded from: classes.dex */
public class Flow extends y {

    /* renamed from: m  reason: collision with root package name */
    public i f2765m;

    public Flow(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.y, androidx.constraintlayout.widget.b
    public final void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        this.f2765m = new i();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, w.f3021b);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = obtainStyledAttributes.getIndex(i4);
                if (index == 0) {
                    this.f2765m.f12600X0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    i iVar = this.f2765m;
                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    iVar.f12621u0 = dimensionPixelSize;
                    iVar.f12622v0 = dimensionPixelSize;
                    iVar.f12623w0 = dimensionPixelSize;
                    iVar.f12624x0 = dimensionPixelSize;
                } else if (index == 18) {
                    i iVar2 = this.f2765m;
                    int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    iVar2.f12623w0 = dimensionPixelSize2;
                    iVar2.f12625y0 = dimensionPixelSize2;
                    iVar2.f12626z0 = dimensionPixelSize2;
                } else if (index == 19) {
                    this.f2765m.f12624x0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.f2765m.f12625y0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.f2765m.f12621u0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.f2765m.f12626z0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.f2765m.f12622v0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.f2765m.f12598V0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.f2765m.f12582F0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.f2765m.f12583G0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.f2765m.f12584H0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.f2765m.f12586J0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.f2765m.f12585I0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.f2765m.f12587K0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.f2765m.f12588L0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.f2765m.f12590N0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.f2765m.f12592P0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.f2765m.f12591O0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.f2765m.f12593Q0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.f2765m.f12589M0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.f2765m.f12596T0 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.f2765m.f12597U0 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.f2765m.f12594R0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.f2765m.f12595S0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.f2765m.f12599W0 = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2788g = this.f2765m;
        n();
    }

    @Override // androidx.constraintlayout.widget.b
    public final void i(f fVar, boolean z4) {
        i iVar = this.f2765m;
        int i4 = iVar.f12623w0;
        if (i4 > 0 || iVar.f12624x0 > 0) {
            if (z4) {
                iVar.f12625y0 = iVar.f12624x0;
                iVar.f12626z0 = i4;
                return;
            }
            iVar.f12625y0 = i4;
            iVar.f12626z0 = iVar.f12624x0;
        }
    }

    @Override // androidx.constraintlayout.widget.y
    public final void o(n nVar, int i4, int i5) {
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i5);
        int size2 = View.MeasureSpec.getSize(i5);
        if (nVar == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        nVar.S(mode, size, mode2, size2);
        setMeasuredDimension(nVar.f12617B0, nVar.f12618C0);
    }

    @Override // androidx.constraintlayout.widget.b, android.view.View
    public final void onMeasure(int i4, int i5) {
        o(this.f2765m, i4, i5);
    }

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Flow(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
