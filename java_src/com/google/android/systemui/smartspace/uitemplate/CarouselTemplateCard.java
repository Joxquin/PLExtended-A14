package com.google.android.systemui.smartspace.uitemplate;

import K2.AbstractC0041n;
import K2.C0032e;
import K2.t;
import L2.b;
import M2.a;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.CarouselTemplateData;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.r;
import com.android.systemui.shared.R;
import java.util.List;
import java.util.Locale;
import n1.d;
/* loaded from: classes.dex */
public class CarouselTemplateCard extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f8409e = 0;

    public CarouselTemplateCard(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        View[] viewArr = new ConstraintLayout[4];
        for (int i4 = 0; i4 < 4; i4++) {
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewGroup.inflate(getContext(), R.layout.smartspace_carousel_column_template_card, null);
            constraintLayout.setId(View.generateViewId());
            viewArr[i4] = constraintLayout;
        }
        int i5 = 0;
        while (i5 < 4) {
            r rVar = new r(0);
            View view = viewArr[i5];
            ConstraintLayout constraintLayout2 = i5 > 0 ? viewArr[i5 - 1] : null;
            ConstraintLayout constraintLayout3 = i5 < 3 ? viewArr[i5 + 1] : null;
            if (i5 == 0) {
                rVar.f2855t = 0;
                rVar.f2802J = 1;
            } else {
                rVar.f2854s = constraintLayout2.getId();
            }
            if (i5 == 3) {
                rVar.f2857v = 0;
            } else {
                rVar.f2856u = constraintLayout3.getId();
            }
            rVar.f2835i = 0;
            rVar.f2841l = 0;
            addView(view, rVar);
            i5++;
        }
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            t.f(childAt.findViewById(R.id.upper_text), 8);
            t.f(childAt.findViewById(R.id.icon), 8);
            t.f(childAt.findViewById(R.id.lower_text), 8);
        }
    }

    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        CarouselTemplateData templateData = smartspaceTarget.getTemplateData();
        if (!b.a(templateData) || templateData.getCarouselItems() == null) {
            Log.w("CarouselTemplateCard", "CarouselTemplateData is null or has no CarouselItem or invalid template type");
            return false;
        }
        List carouselItems = templateData.getCarouselItems();
        int intExact = Math.toIntExact(carouselItems.stream().filter(new a()).count());
        if (intExact < 4) {
            int i4 = 4 - intExact;
            Log.w("CarouselTemplateCard", String.format(Locale.US, "Hiding %d incomplete column(s).", Integer.valueOf(i4)));
            int i5 = 3 - i4;
            int i6 = 0;
            while (i6 < 4) {
                t.f(getChildAt(i6), i6 <= i5 ? 0 : 8);
                i6++;
            }
            ((androidx.constraintlayout.widget.d) ((ConstraintLayout) getChildAt(0)).getLayoutParams()).f2802J = i4 == 0 ? 1 : 0;
        }
        for (int i7 = 0; i7 < intExact; i7++) {
            TextView textView = (TextView) getChildAt(i7).findViewById(R.id.upper_text);
            ImageView imageView = (ImageView) getChildAt(i7).findViewById(R.id.icon);
            TextView textView2 = (TextView) getChildAt(i7).findViewById(R.id.lower_text);
            t.e(textView, ((CarouselTemplateData.CarouselItem) carouselItems.get(i7)).getUpperText());
            t.f(textView, 0);
            t.d(imageView, ((CarouselTemplateData.CarouselItem) carouselItems.get(i7)).getImage());
            t.f(imageView, 0);
            t.e(textView2, ((CarouselTemplateData.CarouselItem) carouselItems.get(i7)).getLowerText());
            t.f(textView2, 0);
        }
        if (templateData.getCarouselAction() != null) {
            C0032e.f(this, smartspaceTarget, templateData.getCarouselAction(), dVar, "CarouselTemplateCard", dVar2);
        }
        for (CarouselTemplateData.CarouselItem carouselItem : templateData.getCarouselItems()) {
            if (carouselItem.getTapAction() != null) {
                C0032e.f(this, smartspaceTarget, carouselItem.getTapAction(), dVar, "CarouselTemplateCard", dVar2);
            }
        }
        return true;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            ((TextView) getChildAt(i5).findViewById(R.id.upper_text)).setTextColor(i4);
            ((TextView) getChildAt(i5).findViewById(R.id.lower_text)).setTextColor(i4);
        }
    }

    public CarouselTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
