package com.google.android.material.internal;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import j.InterfaceC1073D;
import j.r;
import java.util.WeakHashMap;
import k.C1167v0;
import x2.C1470h;
import x2.C1471i;
/* loaded from: classes.dex */
public class NavigationMenuItemView extends C1470h implements InterfaceC1073D {

    /* renamed from: E  reason: collision with root package name */
    public static final int[] f7986E = {16842912};

    /* renamed from: A  reason: collision with root package name */
    public final CheckedTextView f7987A;

    /* renamed from: B  reason: collision with root package name */
    public FrameLayout f7988B;

    /* renamed from: C  reason: collision with root package name */
    public r f7989C;

    /* renamed from: D  reason: collision with root package name */
    public final C1471i f7990D;

    /* renamed from: y  reason: collision with root package name */
    public int f7991y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f7992z;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    @Override // j.InterfaceC1073D
    public final void b(r rVar) {
        StateListDrawable stateListDrawable;
        this.f7989C = rVar;
        int i4 = rVar.f10596a;
        if (i4 > 0) {
            setId(i4);
        }
        setVisibility(rVar.isVisible() ? 0 : 8);
        boolean z4 = true;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f7986E, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.m(this, stateListDrawable);
        }
        boolean isCheckable = rVar.isCheckable();
        refreshDrawableState();
        if (this.f7992z != isCheckable) {
            this.f7992z = isCheckable;
            this.f7990D.sendAccessibilityEvent(this.f7987A, 2048);
        }
        boolean isChecked = rVar.isChecked();
        refreshDrawableState();
        this.f7987A.setChecked(isChecked);
        setEnabled(rVar.isEnabled());
        this.f7987A.setText(rVar.f10600e);
        Drawable icon = rVar.getIcon();
        if (icon != null) {
            int i5 = this.f7991y;
            icon.setBounds(0, 0, i5, i5);
        }
        this.f7987A.setCompoundDrawablesRelative(icon, null, null, null);
        View actionView = rVar.getActionView();
        if (actionView != null) {
            if (this.f7988B == null) {
                this.f7988B = (FrameLayout) ((ViewStub) findViewById(R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f7988B.removeAllViews();
            this.f7988B.addView(actionView);
        }
        setContentDescription(rVar.f10612q);
        setTooltipText(rVar.f10613r);
        r rVar2 = this.f7989C;
        if (rVar2.f10600e != null || rVar2.getIcon() != null || this.f7989C.getActionView() == null) {
            z4 = false;
        }
        if (z4) {
            this.f7987A.setVisibility(8);
            FrameLayout frameLayout = this.f7988B;
            if (frameLayout != null) {
                C1167v0 c1167v0 = (C1167v0) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) c1167v0).width = -1;
                this.f7988B.setLayoutParams(c1167v0);
                return;
            }
            return;
        }
        this.f7987A.setVisibility(0);
        FrameLayout frameLayout2 = this.f7988B;
        if (frameLayout2 != null) {
            C1167v0 c1167v02 = (C1167v0) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) c1167v02).width = -2;
            this.f7988B.setLayoutParams(c1167v02);
        }
    }

    @Override // j.InterfaceC1073D
    public final r c() {
        return this.f7989C;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 1);
        r rVar = this.f7989C;
        if (rVar != null && rVar.isCheckable() && this.f7989C.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, f7986E);
        }
        return onCreateDrawableState;
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        C1471i c1471i = new C1471i(this);
        this.f7990D = c1471i;
        if (this.f11006g != 0) {
            this.f11006g = 0;
            requestLayout();
        }
        LayoutInflater.from(context).inflate(R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.f7991y = context.getResources().getDimensionPixelSize(R.dimen.design_navigation_icon_size);
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R.id.design_menu_item_text);
        this.f7987A = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        J.h(checkedTextView, c1471i);
    }
}
