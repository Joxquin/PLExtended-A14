package com.android.systemui.animation;

import android.view.View;
import com.android.systemui.shared.R;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
abstract class ViewHierarchyAnimator$Bound {

    /* renamed from: d  reason: collision with root package name */
    public static final LEFT f6030d;

    /* renamed from: e  reason: collision with root package name */
    public static final TOP f6031e;

    /* renamed from: f  reason: collision with root package name */
    public static final RIGHT f6032f;

    /* renamed from: g  reason: collision with root package name */
    public static final BOTTOM f6033g;

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ ViewHierarchyAnimator$Bound[] f6034h;
    private final String label;
    private final int overrideTag;

    /* loaded from: classes.dex */
    final class BOTTOM extends ViewHierarchyAnimator$Bound {
        public BOTTOM() {
            super("BOTTOM", 3, "bottom", R.id.tag_override_bottom);
        }

        @Override // com.android.systemui.animation.ViewHierarchyAnimator$Bound
        public final int d(View view) {
            kotlin.jvm.internal.h.e(view, "view");
            return view.getBottom();
        }

        @Override // com.android.systemui.animation.ViewHierarchyAnimator$Bound
        public final void e(View view, int i4) {
            kotlin.jvm.internal.h.e(view, "view");
            view.setBottom(i4);
        }
    }

    /* loaded from: classes.dex */
    final class LEFT extends ViewHierarchyAnimator$Bound {
        public LEFT() {
            super("LEFT", 0, "left", R.id.tag_override_left);
        }

        @Override // com.android.systemui.animation.ViewHierarchyAnimator$Bound
        public final int d(View view) {
            kotlin.jvm.internal.h.e(view, "view");
            return view.getLeft();
        }

        @Override // com.android.systemui.animation.ViewHierarchyAnimator$Bound
        public final void e(View view, int i4) {
            kotlin.jvm.internal.h.e(view, "view");
            view.setLeft(i4);
        }
    }

    /* loaded from: classes.dex */
    final class RIGHT extends ViewHierarchyAnimator$Bound {
        public RIGHT() {
            super("RIGHT", 2, "right", R.id.tag_override_right);
        }

        @Override // com.android.systemui.animation.ViewHierarchyAnimator$Bound
        public final int d(View view) {
            kotlin.jvm.internal.h.e(view, "view");
            return view.getRight();
        }

        @Override // com.android.systemui.animation.ViewHierarchyAnimator$Bound
        public final void e(View view, int i4) {
            kotlin.jvm.internal.h.e(view, "view");
            view.setRight(i4);
        }
    }

    /* loaded from: classes.dex */
    final class TOP extends ViewHierarchyAnimator$Bound {
        public TOP() {
            super("TOP", 1, "top", R.id.tag_override_top);
        }

        @Override // com.android.systemui.animation.ViewHierarchyAnimator$Bound
        public final int d(View view) {
            kotlin.jvm.internal.h.e(view, "view");
            return view.getTop();
        }

        @Override // com.android.systemui.animation.ViewHierarchyAnimator$Bound
        public final void e(View view, int i4) {
            kotlin.jvm.internal.h.e(view, "view");
            view.setTop(i4);
        }
    }

    static {
        LEFT left = new LEFT();
        f6030d = left;
        TOP top = new TOP();
        f6031e = top;
        RIGHT right = new RIGHT();
        f6032f = right;
        BOTTOM bottom = new BOTTOM();
        f6033g = bottom;
        f6034h = new ViewHierarchyAnimator$Bound[]{left, top, right, bottom};
    }

    public ViewHierarchyAnimator$Bound(String str, int i4, String str2, int i5) {
        this.label = str2;
        this.overrideTag = i5;
    }

    public static ViewHierarchyAnimator$Bound valueOf(String str) {
        return (ViewHierarchyAnimator$Bound) Enum.valueOf(ViewHierarchyAnimator$Bound.class, str);
    }

    public static ViewHierarchyAnimator$Bound[] values() {
        return (ViewHierarchyAnimator$Bound[]) f6034h.clone();
    }

    public final String a() {
        return this.label;
    }

    public final int c() {
        return this.overrideTag;
    }

    public abstract int d(View view);

    public abstract void e(View view, int i4);
}
