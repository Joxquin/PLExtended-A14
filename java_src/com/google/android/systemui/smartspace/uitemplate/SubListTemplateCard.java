package com.google.android.systemui.smartspace.uitemplate;

import K2.AbstractC0041n;
import K2.C0032e;
import K2.t;
import L2.b;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.SubListTemplateData;
import android.app.smartspace.uitemplatedata.Text;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.shared.R;
import java.util.List;
import java.util.Locale;
import n1.d;
/* loaded from: classes.dex */
public class SubListTemplateCard extends AbstractC0041n {

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f8424g = {R.id.list_item_1, R.id.list_item_2, R.id.list_item_3};

    /* renamed from: e  reason: collision with root package name */
    public ImageView f8425e;

    /* renamed from: f  reason: collision with root package name */
    public final TextView[] f8426f;

    public SubListTemplateCard(Context context) {
        super(context);
        this.f8426f = new TextView[3];
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8425e = (ImageView) findViewById(R.id.list_icon);
        for (int i4 = 0; i4 < 3; i4++) {
            this.f8426f[i4] = (TextView) findViewById(f8424g[i4]);
        }
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        t.f(this.f8425e, 8);
        for (int i4 = 0; i4 < 3; i4++) {
            t.f(this.f8426f[i4], 8);
        }
    }

    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        r(smartspaceTarget.getSmartspaceTargetId());
        SubListTemplateData templateData = smartspaceTarget.getTemplateData();
        if (!b.a(templateData)) {
            Log.w("SubListTemplateCard", "SubListTemplateData is null or contains invalid template type");
            return false;
        }
        if (templateData.getSubListIcon() != null) {
            t.d(this.f8425e, templateData.getSubListIcon());
            t.f(this.f8425e, 0);
        } else {
            t.f(this.f8425e, 8);
        }
        if (templateData.getSubListTexts() != null) {
            List subListTexts = templateData.getSubListTexts();
            if (subListTexts.isEmpty()) {
                return false;
            }
            int i4 = 0;
            while (true) {
                if (i4 >= 3) {
                    break;
                }
                TextView textView = this.f8426f[i4];
                if (textView == null) {
                    Log.w("SubListTemplateCard", String.format(Locale.US, "Missing list item view to update at row: %d", Integer.valueOf(i4 + 1)));
                    break;
                }
                if (i4 < subListTexts.size()) {
                    t.e(textView, (Text) subListTexts.get(i4));
                    t.f(textView, 0);
                } else {
                    textView.setText("");
                    t.f(textView, 8);
                }
                i4++;
            }
        }
        if (templateData.getSubListAction() != null) {
            C0032e.f(this, smartspaceTarget, templateData.getSubListAction(), dVar, "SubListTemplateCard", dVar2);
        }
        return true;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
        for (int i5 = 0; i5 < 3; i5++) {
            TextView textView = this.f8426f[i5];
            if (textView == null) {
                Log.w("SubListTemplateCard", String.format(Locale.US, "Missing list item view to update at row: %d", Integer.valueOf(i5 + 1)));
                return;
            }
            textView.setTextColor(i4);
        }
    }

    public SubListTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8426f = new TextView[3];
    }
}
