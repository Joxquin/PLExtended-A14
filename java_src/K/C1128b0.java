package k;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import f.C0832a;
/* renamed from: k.b0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1128b0 extends Spinner {

    /* renamed from: l  reason: collision with root package name */
    public static final int[] f10864l = {16843505};

    /* renamed from: d  reason: collision with root package name */
    public final C1162t f10865d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f10866e;

    /* renamed from: f  reason: collision with root package name */
    public final Q f10867f;

    /* renamed from: g  reason: collision with root package name */
    public SpinnerAdapter f10868g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f10869h;

    /* renamed from: i  reason: collision with root package name */
    public final InterfaceC1126a0 f10870i;

    /* renamed from: j  reason: collision with root package name */
    public int f10871j;

    /* renamed from: k  reason: collision with root package name */
    public final Rect f10872k;

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
        if (r6 == null) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1128b0(android.content.Context r12, android.util.AttributeSet r13) {
        /*
            r11 = this;
            r0 = 2130969859(0x7f040503, float:1.7548412E38)
            r11.<init>(r12, r13, r0)
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r11.f10872k = r1
            android.content.Context r1 = r11.getContext()
            k.M0.a(r11, r1)
            int[] r1 = d.C0792a.f8751u
            r2 = 0
            android.content.res.TypedArray r3 = r12.obtainStyledAttributes(r13, r1, r0, r2)
            k.t r4 = new k.t
            r4.<init>(r11)
            r11.f10865d = r4
            r4 = 4
            int r4 = r3.getResourceId(r4, r2)
            if (r4 == 0) goto L31
            i.d r5 = new i.d
            r5.<init>(r4, r12)
            r11.f10866e = r5
            goto L33
        L31:
            r11.f10866e = r12
        L33:
            r4 = -1
            r5 = 0
            int[] r6 = k.C1128b0.f10864l     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4f
            android.content.res.TypedArray r6 = r12.obtainStyledAttributes(r13, r6, r0, r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4f
            boolean r7 = r6.hasValue(r2)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a
            if (r7 == 0) goto L5b
            int r4 = r6.getInt(r2, r2)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a
            goto L5b
        L46:
            r11 = move-exception
            r5 = r6
            goto Lce
        L4a:
            r7 = move-exception
            goto L52
        L4c:
            r11 = move-exception
            goto Lce
        L4f:
            r6 = move-exception
            r7 = r6
            r6 = r5
        L52:
            java.lang.String r8 = "AppCompatSpinner"
            java.lang.String r9 = "Could not read android:spinnerMode"
            android.util.Log.i(r8, r9, r7)     // Catch: java.lang.Throwable -> L46
            if (r6 == 0) goto L5e
        L5b:
            r6.recycle()
        L5e:
            r6 = 2
            r7 = 1
            if (r4 == 0) goto L96
            if (r4 == r7) goto L65
            goto La3
        L65:
            k.X r4 = new k.X
            android.content.Context r8 = r11.f10866e
            r4.<init>(r11, r8, r13)
            android.content.Context r8 = r11.f10866e
            k.R0 r1 = k.R0.m(r8, r13, r1, r0)
            android.content.res.TypedArray r8 = r1.f10822b
            r9 = 3
            r10 = -2
            int r8 = r8.getLayoutDimension(r9, r10)
            r11.f10871j = r8
            android.graphics.drawable.Drawable r8 = r1.e(r7)
            r4.g(r8)
            java.lang.String r6 = r3.getString(r6)
            r4.f10840D = r6
            r1.n()
            r11.f10870i = r4
            k.Q r1 = new k.Q
            r1.<init>(r11, r11, r4)
            r11.f10867f = r1
            goto La3
        L96:
            k.T r1 = new k.T
            r1.<init>(r11)
            r11.f10870i = r1
            java.lang.String r4 = r3.getString(r6)
            r1.f10829f = r4
        La3:
            java.lang.CharSequence[] r1 = r3.getTextArray(r2)
            if (r1 == 0) goto Lba
            android.widget.ArrayAdapter r2 = new android.widget.ArrayAdapter
            r4 = 17367048(0x1090008, float:2.5162948E-38)
            r2.<init>(r12, r4, r1)
            r12 = 2131558693(0x7f0d0125, float:1.874271E38)
            r2.setDropDownViewResource(r12)
            r11.setAdapter(r2)
        Lba:
            r3.recycle()
            r11.f10869h = r7
            android.widget.SpinnerAdapter r12 = r11.f10868g
            if (r12 == 0) goto Lc8
            r11.setAdapter(r12)
            r11.f10868g = r5
        Lc8:
            k.t r11 = r11.f10865d
            r11.d(r13, r0)
            return
        Lce:
            if (r5 == 0) goto Ld3
            r5.recycle()
        Ld3:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: k.C1128b0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i4 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i5 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i5 = Math.max(i5, view.getMeasuredWidth());
        }
        if (drawable != null) {
            drawable.getPadding(this.f10872k);
            Rect rect = this.f10872k;
            return i5 + rect.left + rect.right;
        }
        return i5;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10865d;
        if (c1162t != null) {
            c1162t.a();
        }
    }

    @Override // android.widget.Spinner
    public final int getDropDownHorizontalOffset() {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        return interfaceC1126a0 != null ? interfaceC1126a0.a() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public final int getDropDownVerticalOffset() {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        return interfaceC1126a0 != null ? interfaceC1126a0.m() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public final int getDropDownWidth() {
        return this.f10870i != null ? this.f10871j : super.getDropDownWidth();
    }

    @Override // android.widget.Spinner
    public final Drawable getPopupBackground() {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        return interfaceC1126a0 != null ? interfaceC1126a0.d() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public final Context getPopupContext() {
        return this.f10866e;
    }

    @Override // android.widget.Spinner
    public final CharSequence getPrompt() {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        return interfaceC1126a0 != null ? interfaceC1126a0.n() : super.getPrompt();
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        if (interfaceC1126a0 == null || !interfaceC1126a0.b()) {
            return;
        }
        this.f10870i.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        if (this.f10870i == null || View.MeasureSpec.getMode(i4) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i4)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        Z z4 = (Z) parcelable;
        super.onRestoreInstanceState(z4.getSuperState());
        if (!z4.f10847d || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new S(0, this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        Z z4 = new Z(super.onSaveInstanceState());
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        z4.f10847d = interfaceC1126a0 != null && interfaceC1126a0.b();
        return z4;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Q q4 = this.f10867f;
        if (q4 == null || !q4.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        if (interfaceC1126a0 != null) {
            if (interfaceC1126a0.b()) {
                return true;
            }
            this.f10870i.l(getTextDirection(), getTextAlignment());
            return true;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10865d;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10865d;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.Spinner
    public final void setDropDownHorizontalOffset(int i4) {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        if (interfaceC1126a0 == null) {
            super.setDropDownHorizontalOffset(i4);
            return;
        }
        interfaceC1126a0.i(i4);
        this.f10870i.k(i4);
    }

    @Override // android.widget.Spinner
    public final void setDropDownVerticalOffset(int i4) {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        if (interfaceC1126a0 != null) {
            interfaceC1126a0.h(i4);
        } else {
            super.setDropDownVerticalOffset(i4);
        }
    }

    @Override // android.widget.Spinner
    public final void setDropDownWidth(int i4) {
        if (this.f10870i != null) {
            this.f10871j = i4;
        } else {
            super.setDropDownWidth(i4);
        }
    }

    @Override // android.widget.Spinner
    public final void setPopupBackgroundDrawable(Drawable drawable) {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        if (interfaceC1126a0 != null) {
            interfaceC1126a0.g(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public final void setPopupBackgroundResource(int i4) {
        setPopupBackgroundDrawable(C0832a.a(i4, this.f10866e));
    }

    @Override // android.widget.Spinner
    public final void setPrompt(CharSequence charSequence) {
        InterfaceC1126a0 interfaceC1126a0 = this.f10870i;
        if (interfaceC1126a0 != null) {
            interfaceC1126a0.f(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f10869h) {
            this.f10868g = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f10870i != null) {
            Context context = this.f10866e;
            if (context == null) {
                context = getContext();
            }
            this.f10870i.o(new U(spinnerAdapter, context.getTheme()));
        }
    }
}
