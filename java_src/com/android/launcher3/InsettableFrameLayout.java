package com.android.launcher3;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class InsettableFrameLayout extends FrameLayout implements Insettable {
    @ViewDebug.ExportedProperty(category = "launcher")
    protected Rect mInsets;

    public InsettableFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInsets = new Rect();
    }

    public static void dispatchInsets(ViewGroup viewGroup, Rect rect) {
        int childCount = viewGroup.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = viewGroup.getChildAt(i4);
            if (childAt instanceof Insettable) {
                ((Insettable) childAt).setInsets(rect);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public Rect getInsets() {
        return this.mInsets;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (isAttachedToWindow()) {
            setFrameLayoutChildInsets(view, this.mInsets, new Rect());
        }
    }

    public void setFrameLayoutChildInsets(View view, Rect rect, Rect rect2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (view instanceof Insettable) {
            ((Insettable) view).setInsets(rect);
        } else if (!layoutParams.ignoreInsets) {
            ((FrameLayout.LayoutParams) layoutParams).topMargin = (rect.top - rect2.top) + ((FrameLayout.LayoutParams) layoutParams).topMargin;
            ((FrameLayout.LayoutParams) layoutParams).leftMargin = (rect.left - rect2.left) + ((FrameLayout.LayoutParams) layoutParams).leftMargin;
            ((FrameLayout.LayoutParams) layoutParams).rightMargin = (rect.right - rect2.right) + ((FrameLayout.LayoutParams) layoutParams).rightMargin;
            ((FrameLayout.LayoutParams) layoutParams).bottomMargin = (rect.bottom - rect2.bottom) + ((FrameLayout.LayoutParams) layoutParams).bottomMargin;
        }
        view.setLayoutParams(layoutParams);
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            setFrameLayoutChildInsets(getChildAt(i4), rect, this.mInsets);
        }
        this.mInsets.set(rect);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* loaded from: classes.dex */
    public class LayoutParams extends FrameLayout.LayoutParams {
        public boolean ignoreInsets;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.ignoreInsets = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.InsettableFrameLayout_Layout);
            this.ignoreInsets = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i4, int i5) {
            super(i4, i5);
            this.ignoreInsets = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.ignoreInsets = false;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
