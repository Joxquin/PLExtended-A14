package com.google.android.systemui.smartspace;

import K2.t;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.shared.R;
import n1.d;
/* loaded from: classes.dex */
public class BcSmartspaceCardLoyalty extends BcSmartspaceCardGenericImage {

    /* renamed from: f  reason: collision with root package name */
    public ImageView f8304f;

    /* renamed from: g  reason: collision with root package name */
    public TextView f8305g;

    /* renamed from: h  reason: collision with root package name */
    public TextView f8306h;

    public BcSmartspaceCardLoyalty(Context context) {
        super(context);
    }

    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardGenericImage, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8304f = (ImageView) findViewById(R.id.loyalty_program_logo);
        this.f8305g = (TextView) findViewById(R.id.loyalty_program_name);
        this.f8306h = (TextView) findViewById(R.id.card_prompt);
    }

    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardGenericImage, K2.AbstractC0041n
    public final void s() {
        super.s();
        t.f(this.f8303e, 8);
        t.f(this.f8304f, 8);
        t.f(this.f8305g, 8);
        t.f(this.f8306h, 8);
    }

    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardGenericImage, K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        super.t(smartspaceTarget, dVar, dVar2);
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        Bundle extras = baseAction == null ? null : baseAction.getExtras();
        if (extras != null) {
            boolean containsKey = extras.containsKey("imageBitmap");
            if (extras.containsKey("cardPrompt")) {
                String string = extras.getString("cardPrompt");
                TextView textView = this.f8306h;
                if (textView == null) {
                    Log.w("BcSmartspaceCardLoyalty", "No card prompt view to update");
                } else {
                    textView.setText(string);
                }
                t.f(this.f8306h, 0);
                if (containsKey) {
                    t.f(this.f8303e, 0);
                }
                return true;
            } else if (!extras.containsKey("loyaltyProgramName")) {
                if (containsKey) {
                    t.f(this.f8304f, 0);
                }
                return containsKey;
            } else {
                String string2 = extras.getString("loyaltyProgramName");
                TextView textView2 = this.f8305g;
                if (textView2 == null) {
                    Log.w("BcSmartspaceCardLoyalty", "No loyalty program name view to update");
                } else {
                    textView2.setText(string2);
                }
                t.f(this.f8305g, 0);
                if (containsKey) {
                    t.f(this.f8304f, 0);
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardGenericImage, K2.AbstractC0041n
    public final void u(int i4) {
        this.f8305g.setTextColor(i4);
        this.f8306h.setTextColor(i4);
    }

    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardGenericImage
    public final void v(Bitmap bitmap) {
        super.v(bitmap);
        this.f8304f.setImageBitmap(bitmap);
    }

    public BcSmartspaceCardLoyalty(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
