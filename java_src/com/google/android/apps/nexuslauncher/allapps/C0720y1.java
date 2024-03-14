package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.quickstep.views.LaunchableConstraintLayout;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.y1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0720y1 extends LaunchableConstraintLayout implements A2 {

    /* renamed from: d  reason: collision with root package name */
    public final C0719y0 f7294d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0720y1(Context context) {
        super(context);
        kotlin.jvm.internal.h.e(context, "context");
        C0719y0 f4 = C0719y0.f(getContext());
        kotlin.jvm.internal.h.c(f4, "null cannot be cast to non-null type com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager<*>");
        this.f7294d = f4;
    }

    public void e(C0653h1 c0653h1) {
        List list = c0653h1.f7081b;
        if (list == null) {
            list = new ArrayList();
        }
        int min = Math.min(list.size(), s());
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childView = getChildAt(i4);
            if (i4 < min) {
                Object obj = list.get(i4);
                kotlin.jvm.internal.h.d(obj, "childTargets[i]");
                kotlin.jvm.internal.h.d(childView, "childView");
                r(c0653h1, (SearchTarget) obj, childView);
                childView.setVisibility(0);
            } else {
                kotlin.jvm.internal.h.d(childView, "childView");
                t(childView);
                childView.setVisibility(8);
            }
        }
        h(c0653h1.f7083d);
    }

    public void r(C0653h1 c0653h1, SearchTarget searchTarget, View view) {
        A2 a22 = view instanceof A2 ? (A2) view : null;
        if (a22 != null) {
            a22.e(C0653h1.a(searchTarget));
        }
    }

    public int s() {
        return this.f7294d.f7288u;
    }

    public void t(View view) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0720y1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        kotlin.jvm.internal.h.e(context, "context");
        C0719y0 f4 = C0719y0.f(getContext());
        kotlin.jvm.internal.h.c(f4, "null cannot be cast to non-null type com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager<*>");
        this.f7294d = f4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0720y1(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        kotlin.jvm.internal.h.e(context, "context");
        C0719y0 f4 = C0719y0.f(getContext());
        kotlin.jvm.internal.h.c(f4, "null cannot be cast to non-null type com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager<*>");
        this.f7294d = f4;
    }
}
