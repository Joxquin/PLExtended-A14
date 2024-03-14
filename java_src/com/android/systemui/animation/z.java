package com.android.systemui.animation;

import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.shared.R;
import java.util.Set;
/* loaded from: classes.dex */
public final class z {
    public static final Integer a(View view, ViewHierarchyAnimator$Bound viewHierarchyAnimator$Bound) {
        z zVar = A.f6025a;
        Object tag = view.getTag(viewHierarchyAnimator$Bound.c());
        if (tag instanceof Integer) {
            return (Integer) tag;
        }
        return null;
    }

    public static void b(View view, w wVar, Set set) {
        if (set.contains(view)) {
            return;
        }
        Object tag = view.getTag(R.id.tag_layout_listener);
        if (tag != null && (tag instanceof View.OnLayoutChangeListener)) {
            view.removeOnLayoutChangeListener((View.OnLayoutChangeListener) tag);
        }
        view.addOnLayoutChangeListener(wVar);
        view.setTag(R.id.tag_layout_listener, wVar);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = viewGroup.getChildAt(i4);
                kotlin.jvm.internal.h.d(childAt, "view.getChildAt(i)");
                b(childAt, wVar, set);
            }
        }
    }

    public static void c(View view) {
        Object tag = view.getTag(R.id.tag_layout_listener);
        if (tag != null && (tag instanceof View.OnLayoutChangeListener)) {
            view.setTag(R.id.tag_layout_listener, null);
            view.removeOnLayoutChangeListener((View.OnLayoutChangeListener) tag);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = viewGroup.getChildAt(i4);
                kotlin.jvm.internal.h.d(childAt, "view.getChildAt(i)");
                c(childAt);
            }
        }
    }

    public static void d(View view, ViewHierarchyAnimator$Bound viewHierarchyAnimator$Bound, int i4) {
        view.setTag(viewHierarchyAnimator$Bound.c(), Integer.valueOf(i4));
        viewHierarchyAnimator$Bound.e(view, i4);
    }
}
