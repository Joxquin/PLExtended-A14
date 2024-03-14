package com.android.systemui.animation;

import android.view.animation.Interpolator;
import com.android.systemui.animation.ViewHierarchyAnimator$Bound;
import java.util.Map;
import kotlin.Pair;
/* loaded from: classes.dex */
public final class A {

    /* renamed from: a  reason: collision with root package name */
    public static final z f6025a = new z();

    /* renamed from: b  reason: collision with root package name */
    public static final Map f6026b;

    static {
        Interpolator interpolator = y0.e.f12937a;
        ViewHierarchyAnimator$Bound.LEFT left = ViewHierarchyAnimator$Bound.f6030d;
        Pair pair = new Pair(left, new x(left, left.a()));
        ViewHierarchyAnimator$Bound.TOP top = ViewHierarchyAnimator$Bound.f6031e;
        Pair pair2 = new Pair(top, new x(top, top.a()));
        ViewHierarchyAnimator$Bound.RIGHT right = ViewHierarchyAnimator$Bound.f6032f;
        Pair pair3 = new Pair(right, new x(right, right.a()));
        ViewHierarchyAnimator$Bound.BOTTOM bottom = ViewHierarchyAnimator$Bound.f6033g;
        f6026b = kotlin.collections.x.e(pair, pair2, pair3, new Pair(bottom, new x(bottom, bottom.a())));
    }
}
