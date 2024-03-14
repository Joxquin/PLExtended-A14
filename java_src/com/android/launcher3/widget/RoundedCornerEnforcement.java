package com.android.launcher3.widget;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class RoundedCornerEnforcement {
    private static void accumulateViewsWithId(View view, List list) {
        if (view.getId() == 16908288) {
            ((ArrayList) list).add(view);
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                accumulateViewsWithId(viewGroup.getChildAt(i4), list);
            }
        }
    }

    public static float computeEnforcedRadius(Context context) {
        if (Utilities.ATLEAST_S) {
            Resources resources = context.getResources();
            return Math.min(resources.getDimension(R.dimen.enforced_rounded_corner_max_radius), resources.getDimension(17104904));
        }
        return 0.0f;
    }

    public static View findBackground(View view) {
        ArrayList arrayList = new ArrayList();
        accumulateViewsWithId(view, arrayList);
        if (arrayList.size() == 1) {
            return (View) arrayList.get(0);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            return viewGroup.getChildCount() > 0 ? findUndefinedBackground(viewGroup.getChildAt(0)) : view;
        }
        return view;
    }

    private static View findUndefinedBackground(View view) {
        View view2 = null;
        if (view.getVisibility() != 0) {
            return null;
        }
        if (view.getVisibility() == 0 && !(view.willNotDraw() && view.getForeground() == null && view.getBackground() == null)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                View findUndefinedBackground = findUndefinedBackground(viewGroup.getChildAt(i4));
                if (findUndefinedBackground != null) {
                    if (view2 != null) {
                        return view;
                    }
                    view2 = findUndefinedBackground;
                }
            }
        }
        return view2;
    }
}
