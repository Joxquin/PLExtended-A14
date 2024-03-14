package com.google.android.systemui.smartspace;

import K2.AbstractC0041n;
import K2.t;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import com.android.systemui.shared.R;
import n1.d;
/* loaded from: classes.dex */
public class BcSmartspaceCardFlight extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public ImageView f8302e;

    public BcSmartspaceCardFlight(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8302e = (ImageView) findViewById(R.id.flight_qr_code);
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        t.f(this.f8302e, 8);
    }

    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        Bundle extras = baseAction == null ? null : baseAction.getExtras();
        if (extras == null || !extras.containsKey("qrCodeBitmap")) {
            return false;
        }
        Bitmap bitmap = (Bitmap) extras.get("qrCodeBitmap");
        ImageView imageView = this.f8302e;
        if (imageView == null) {
            Log.w("BcSmartspaceCardFlight", "No flight QR code view to update");
        } else {
            imageView.setImageBitmap(bitmap);
        }
        t.f(this.f8302e, 0);
        return true;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
    }

    public BcSmartspaceCardFlight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
