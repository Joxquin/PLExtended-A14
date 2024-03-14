package com.google.android.systemui.smartspace.uitemplate;

import K2.AbstractC0041n;
import K2.t;
import L2.b;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.BaseTemplateData;
import android.app.smartspace.uitemplatedata.CombinedCardsTemplateData;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.shared.R;
import java.util.List;
import n1.d;
/* loaded from: classes.dex */
public class CombinedCardsTemplateCard extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public ConstraintLayout f8410e;

    /* renamed from: f  reason: collision with root package name */
    public ConstraintLayout f8411f;

    public CombinedCardsTemplateCard(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8410e = (ConstraintLayout) findViewById(R.id.first_sub_card_container);
        this.f8411f = (ConstraintLayout) findViewById(R.id.second_sub_card_container);
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        t.f(this.f8410e, 8);
        t.f(this.f8411f, 8);
    }

    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        r(smartspaceTarget.getSmartspaceTargetId());
        CombinedCardsTemplateData templateData = smartspaceTarget.getTemplateData();
        if (!b.a(templateData) || templateData.getCombinedCardDataList().isEmpty()) {
            Log.w("CombinedCardsTemplateCard", "TemplateData is null or empty or invalid template type");
            return false;
        }
        List combinedCardDataList = templateData.getCombinedCardDataList();
        BaseTemplateData baseTemplateData = (BaseTemplateData) combinedCardDataList.get(0);
        BaseTemplateData baseTemplateData2 = combinedCardDataList.size() > 1 ? (BaseTemplateData) combinedCardDataList.get(1) : null;
        if (v(this.f8410e, baseTemplateData, smartspaceTarget, dVar, dVar2)) {
            return baseTemplateData2 == null || v(this.f8411f, baseTemplateData2, smartspaceTarget, dVar, dVar2);
        }
        return false;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
        if (this.f8410e.getChildCount() != 0) {
            ((AbstractC0041n) this.f8410e.getChildAt(0)).u(i4);
        }
        if (this.f8411f.getChildCount() != 0) {
            ((AbstractC0041n) this.f8411f.getChildAt(0)).u(i4);
        }
    }

    public final boolean v(ConstraintLayout constraintLayout, BaseTemplateData baseTemplateData, SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        if (baseTemplateData == null) {
            t.f(constraintLayout, 8);
            Log.w("CombinedCardsTemplateCard", "Sub-card templateData is null or empty");
            return false;
        }
        int a4 = t.a(baseTemplateData.getTemplateType());
        if (a4 == 0) {
            t.f(constraintLayout, 8);
            Log.w("CombinedCardsTemplateCard", "Combined sub-card res is null. Cannot set it up");
            return false;
        }
        AbstractC0041n abstractC0041n = (AbstractC0041n) LayoutInflater.from(constraintLayout.getContext()).inflate(a4, (ViewGroup) constraintLayout, false);
        abstractC0041n.t(new SmartspaceTarget.Builder(smartspaceTarget.getSmartspaceTargetId(), smartspaceTarget.getComponentName(), smartspaceTarget.getUserHandle()).setTemplateData(baseTemplateData).build(), dVar, dVar2);
        constraintLayout.removeAllViews();
        androidx.constraintlayout.widget.d dVar3 = new androidx.constraintlayout.widget.d(-2, getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_card_height));
        dVar3.f2855t = 0;
        dVar3.f2857v = 0;
        dVar3.f2835i = 0;
        dVar3.f2841l = 0;
        t.f(abstractC0041n, 0);
        constraintLayout.addView(abstractC0041n, dVar3);
        t.f(constraintLayout, 0);
        return true;
    }

    public CombinedCardsTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
