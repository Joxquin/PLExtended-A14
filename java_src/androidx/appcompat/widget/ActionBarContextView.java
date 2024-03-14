package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import d.C0792a;
import f.C0832a;
import i.AbstractC0970b;
import j.C1097o;
import j.InterfaceC1074E;
import java.util.WeakHashMap;
import k.AbstractC1127b;
import k.C1141i;
import k.C1151n;
import k.View$OnClickListenerC1131d;
import k.c1;
/* loaded from: classes.dex */
public class ActionBarContextView extends AbstractC1127b {

    /* renamed from: l  reason: collision with root package name */
    public CharSequence f2525l;

    /* renamed from: m  reason: collision with root package name */
    public CharSequence f2526m;

    /* renamed from: n  reason: collision with root package name */
    public View f2527n;

    /* renamed from: o  reason: collision with root package name */
    public View f2528o;

    /* renamed from: p  reason: collision with root package name */
    public View f2529p;

    /* renamed from: q  reason: collision with root package name */
    public LinearLayout f2530q;

    /* renamed from: r  reason: collision with root package name */
    public TextView f2531r;

    /* renamed from: s  reason: collision with root package name */
    public TextView f2532s;

    /* renamed from: t  reason: collision with root package name */
    public final int f2533t;

    /* renamed from: u  reason: collision with root package name */
    public final int f2534u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f2535v;

    /* renamed from: w  reason: collision with root package name */
    public final int f2536w;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    @Override // k.AbstractC1127b
    public final void e(int i4) {
        this.f10860h = i4;
    }

    public final void g(AbstractC0970b abstractC0970b) {
        View view = this.f2527n;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f2536w, (ViewGroup) this, false);
            this.f2527n = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f2527n);
        }
        View findViewById = this.f2527n.findViewById(R.id.action_mode_close_button);
        this.f2528o = findViewById;
        findViewById.setOnClickListener(new View$OnClickListenerC1131d(abstractC0970b));
        C1097o e4 = abstractC0970b.e();
        C1151n c1151n = this.f10859g;
        if (c1151n != null) {
            c1151n.e();
            C1141i c1141i = c1151n.f10941u;
            if (c1141i != null && c1141i.b()) {
                c1141i.f10464j.dismiss();
            }
        }
        C1151n c1151n2 = new C1151n(getContext());
        this.f10859g = c1151n2;
        c1151n2.f10933m = true;
        c1151n2.f10934n = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        e4.b(this.f10859g, this.f10857e);
        C1151n c1151n3 = this.f10859g;
        InterfaceC1074E interfaceC1074E = c1151n3.f10931k;
        if (interfaceC1074E == null) {
            InterfaceC1074E interfaceC1074E2 = (InterfaceC1074E) c1151n3.f10927g.inflate(c1151n3.f10929i, (ViewGroup) this, false);
            c1151n3.f10931k = interfaceC1074E2;
            interfaceC1074E2.a(c1151n3.f10926f);
            c1151n3.d();
        }
        InterfaceC1074E interfaceC1074E3 = c1151n3.f10931k;
        if (interfaceC1074E != interfaceC1074E3) {
            ActionMenuView actionMenuView = (ActionMenuView) interfaceC1074E3;
            actionMenuView.f2573w = c1151n3;
            c1151n3.f10931k = actionMenuView;
            actionMenuView.f2569s = c1151n3.f10926f;
        }
        ActionMenuView actionMenuView2 = (ActionMenuView) interfaceC1074E3;
        this.f10858f = actionMenuView2;
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.m(actionMenuView2, null);
        addView(this.f10858f, layoutParams);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public final void h() {
        if (this.f2530q == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f2530q = linearLayout;
            this.f2531r = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f2532s = (TextView) this.f2530q.findViewById(R.id.action_bar_subtitle);
            if (this.f2533t != 0) {
                this.f2531r.setTextAppearance(getContext(), this.f2533t);
            }
            if (this.f2534u != 0) {
                this.f2532s.setTextAppearance(getContext(), this.f2534u);
            }
        }
        this.f2531r.setText(this.f2525l);
        this.f2532s.setText(this.f2526m);
        boolean z4 = !TextUtils.isEmpty(this.f2525l);
        boolean z5 = !TextUtils.isEmpty(this.f2526m);
        int i4 = 0;
        this.f2532s.setVisibility(z5 ? 0 : 8);
        LinearLayout linearLayout2 = this.f2530q;
        if (!z4 && !z5) {
            i4 = 8;
        }
        linearLayout2.setVisibility(i4);
        if (this.f2530q.getParent() == null) {
            addView(this.f2530q);
        }
    }

    public final void i() {
        removeAllViews();
        this.f2529p = null;
        this.f10858f = null;
        this.f10859g = null;
        View view = this.f2528o;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    public final void j(View view) {
        LinearLayout linearLayout;
        View view2 = this.f2529p;
        if (view2 != null) {
            removeView(view2);
        }
        this.f2529p = view;
        if (view != null && (linearLayout = this.f2530q) != null) {
            removeView(linearLayout);
            this.f2530q = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C1151n c1151n = this.f10859g;
        if (c1151n != null) {
            c1151n.e();
            C1141i c1141i = this.f10859g.f10941u;
            if (c1141i == null || !c1141i.b()) {
                return;
            }
            c1141i.f10464j.dismiss();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        boolean a4 = c1.a(this);
        int paddingRight = a4 ? (i6 - i4) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i7 - i5) - getPaddingTop()) - getPaddingBottom();
        View view = this.f2527n;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f2527n.getLayoutParams();
            int i8 = a4 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i9 = a4 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i10 = a4 ? paddingRight - i8 : paddingRight + i8;
            int d4 = AbstractC1127b.d(i10, paddingTop, paddingTop2, this.f2527n, a4) + i10;
            paddingRight = a4 ? d4 - i9 : d4 + i9;
        }
        LinearLayout linearLayout = this.f2530q;
        if (linearLayout != null && this.f2529p == null && linearLayout.getVisibility() != 8) {
            paddingRight += AbstractC1127b.d(paddingRight, paddingTop, paddingTop2, this.f2530q, a4);
        }
        View view2 = this.f2529p;
        if (view2 != null) {
            AbstractC1127b.d(paddingRight, paddingTop, paddingTop2, view2, a4);
        }
        int paddingLeft = a4 ? getPaddingLeft() : (i6 - i4) - getPaddingRight();
        ActionMenuView actionMenuView = this.f10858f;
        if (actionMenuView != null) {
            AbstractC1127b.d(paddingLeft, paddingTop, paddingTop2, actionMenuView, !a4);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i4, int i5) {
        int mode = View.MeasureSpec.getMode(i4);
        int i6 = QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE;
        if (mode != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i5) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i4);
        int i7 = this.f10860h;
        if (i7 <= 0) {
            i7 = View.MeasureSpec.getSize(i5);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i8 = i7 - paddingBottom;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE);
        View view = this.f2527n;
        if (view != null) {
            int c4 = AbstractC1127b.c(view, paddingLeft, makeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f2527n.getLayoutParams();
            paddingLeft = c4 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f10858f;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = AbstractC1127b.c(this.f10858f, paddingLeft, makeMeasureSpec);
        }
        LinearLayout linearLayout = this.f2530q;
        if (linearLayout != null && this.f2529p == null) {
            if (this.f2535v) {
                this.f2530q.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.f2530q.getMeasuredWidth();
                boolean z4 = measuredWidth <= paddingLeft;
                if (z4) {
                    paddingLeft -= measuredWidth;
                }
                this.f2530q.setVisibility(z4 ? 0 : 8);
            } else {
                paddingLeft = AbstractC1127b.c(linearLayout, paddingLeft, makeMeasureSpec);
            }
        }
        View view2 = this.f2529p;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i9 = layoutParams.width;
            int i10 = i9 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i9 >= 0) {
                paddingLeft = Math.min(i9, paddingLeft);
            }
            int i11 = layoutParams.height;
            if (i11 == -2) {
                i6 = Integer.MIN_VALUE;
            }
            if (i11 >= 0) {
                i8 = Math.min(i11, i8);
            }
            this.f2529p.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i10), View.MeasureSpec.makeMeasureSpec(i8, i6));
        }
        if (this.f10860h > 0) {
            setMeasuredDimension(size, i7);
            return;
        }
        int childCount = getChildCount();
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            int measuredHeight = getChildAt(i13).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i12) {
                i12 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i12);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Drawable drawable;
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0792a.f8734d, i4, 0);
        if (obtainStyledAttributes.hasValue(0) && (resourceId = obtainStyledAttributes.getResourceId(0, 0)) != 0) {
            drawable = C0832a.a(resourceId, context);
        } else {
            drawable = obtainStyledAttributes.getDrawable(0);
        }
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.m(this, drawable);
        this.f2533t = obtainStyledAttributes.getResourceId(5, 0);
        this.f2534u = obtainStyledAttributes.getResourceId(4, 0);
        this.f10860h = obtainStyledAttributes.getLayoutDimension(3, 0);
        this.f2536w = obtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }
}
