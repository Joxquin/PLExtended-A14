package com.google.android.systemui.smartspace.uitemplate;

import K2.AbstractC0041n;
import K2.C0032e;
import K2.t;
import L2.b;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceUtils;
import android.app.smartspace.uitemplatedata.SubCardTemplateData;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.shared.R;
import n1.d;
/* loaded from: classes.dex */
public class SubCardTemplateCard extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public ImageView f8417e;

    /* renamed from: f  reason: collision with root package name */
    public TextView f8418f;

    public SubCardTemplateCard(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8417e = (ImageView) findViewById(R.id.image_view);
        this.f8418f = (TextView) findViewById(R.id.card_prompt);
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        t.f(this.f8417e, 8);
        t.f(this.f8418f, 8);
    }

    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        boolean z4;
        SubCardTemplateData templateData = smartspaceTarget.getTemplateData();
        if (!b.a(templateData)) {
            Log.w("SubCardTemplateCard", "SubCardTemplateData is null or invalid template type");
            return false;
        }
        boolean z5 = true;
        if (templateData.getSubCardIcon() != null) {
            t.d(this.f8417e, templateData.getSubCardIcon());
            t.f(this.f8417e, 0);
            z4 = true;
        } else {
            z4 = false;
        }
        if (SmartspaceUtils.isEmpty(templateData.getSubCardText())) {
            z5 = z4;
        } else {
            t.e(this.f8418f, templateData.getSubCardText());
            t.f(this.f8418f, 0);
        }
        if (z5 && templateData.getSubCardAction() != null) {
            C0032e.f(this, smartspaceTarget, templateData.getSubCardAction(), dVar, "SubCardTemplateCard", dVar2);
        }
        return z5;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
        this.f8418f.setTextColor(i4);
    }

    public SubCardTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
