package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.view.View;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.j2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0662j2 {
    public static void a(View view, Context context, I2 i22, boolean z4) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.search_decoration_padding);
        Resources resources = context.getResources();
        boolean z5 = i22.f6593e;
        int i4 = R.dimen.search_group_radius;
        float dimensionPixelSize2 = resources.getDimensionPixelSize(z5 ? R.dimen.search_group_radius : R.dimen.search_result_radius);
        Resources resources2 = context.getResources();
        if (!i22.f6592d) {
            i4 = R.dimen.search_result_radius;
        }
        float dimensionPixelSize3 = resources2.getDimensionPixelSize(i4);
        int attrColor = z4 ? GraphicsUtils.getAttrColor(R.attr.focusHighlight, context) : GraphicsUtils.getAttrColor(R.attr.groupHighlight, context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadii(new float[]{dimensionPixelSize3, dimensionPixelSize3, dimensionPixelSize3, dimensionPixelSize3, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2});
        gradientDrawable.setColor(attrColor);
        int paddingLeft = view.getPaddingLeft();
        int paddingTop = view.getPaddingTop();
        int paddingRight = view.getPaddingRight();
        int paddingBottom = view.getPaddingBottom();
        view.setBackground(new InsetDrawable((Drawable) gradientDrawable, dimensionPixelSize));
        view.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }
}
