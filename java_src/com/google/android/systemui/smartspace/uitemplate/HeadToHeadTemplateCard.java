package com.google.android.systemui.smartspace.uitemplate;

import K2.AbstractC0041n;
import K2.t;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class HeadToHeadTemplateCard extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public TextView f8412e;

    /* renamed from: f  reason: collision with root package name */
    public TextView f8413f;

    /* renamed from: g  reason: collision with root package name */
    public TextView f8414g;

    /* renamed from: h  reason: collision with root package name */
    public ImageView f8415h;

    /* renamed from: i  reason: collision with root package name */
    public ImageView f8416i;

    public HeadToHeadTemplateCard(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8412e = (TextView) findViewById(R.id.head_to_head_title);
        this.f8413f = (TextView) findViewById(R.id.first_competitor_text);
        this.f8414g = (TextView) findViewById(R.id.second_competitor_text);
        this.f8415h = (ImageView) findViewById(R.id.first_competitor_icon);
        this.f8416i = (ImageView) findViewById(R.id.second_competitor_icon);
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        t.f(this.f8412e, 8);
        t.f(this.f8413f, 8);
        t.f(this.f8414g, 8);
        t.f(this.f8415h, 8);
        t.f(this.f8416i, 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b2  */
    @Override // K2.AbstractC0041n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean t(android.app.smartspace.SmartspaceTarget r10, n1.d r11, L2.d r12) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.systemui.smartspace.uitemplate.HeadToHeadTemplateCard.t(android.app.smartspace.SmartspaceTarget, n1.d, L2.d):boolean");
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
        this.f8413f.setTextColor(i4);
        this.f8414g.setTextColor(i4);
    }

    public HeadToHeadTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
