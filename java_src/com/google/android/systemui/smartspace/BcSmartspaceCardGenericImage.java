package com.google.android.systemui.smartspace;

import K2.AbstractC0041n;
import K2.C0032e;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.systemui.shared.R;
import n1.d;
/* loaded from: classes.dex */
public class BcSmartspaceCardGenericImage extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public ImageView f8303e;

    public BcSmartspaceCardGenericImage(Context context) {
        super(context);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f8303e = (ImageView) findViewById(R.id.image_view);
    }

    @Override // K2.AbstractC0041n
    public void s() {
        this.f8303e.setImageBitmap(null);
    }

    @Override // K2.AbstractC0041n
    public boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        Bundle extras = baseAction == null ? null : baseAction.getExtras();
        if (extras == null || !extras.containsKey("imageBitmap")) {
            return false;
        }
        if (extras.containsKey("imageScaleType")) {
            String string = extras.getString("imageScaleType");
            try {
                this.f8303e.setScaleType(ImageView.ScaleType.valueOf(string));
            } catch (IllegalArgumentException unused) {
                Log.w("SmartspaceGenericImg", "Invalid imageScaleType value: " + string);
            }
        }
        String a4 = C0032e.a(extras);
        if (a4 != null) {
            ((androidx.constraintlayout.widget.d) this.f8303e.getLayoutParams()).f2799G = a4;
        }
        if (extras.containsKey("imageLayoutWidth")) {
            ((ViewGroup.MarginLayoutParams) ((androidx.constraintlayout.widget.d) this.f8303e.getLayoutParams())).width = extras.getInt("imageLayoutWidth");
        }
        if (extras.containsKey("imageLayoutHeight")) {
            ((ViewGroup.MarginLayoutParams) ((androidx.constraintlayout.widget.d) this.f8303e.getLayoutParams())).height = extras.getInt("imageLayoutHeight");
        }
        v((Bitmap) extras.get("imageBitmap"));
        return true;
    }

    @Override // K2.AbstractC0041n
    public void u(int i4) {
    }

    public void v(Bitmap bitmap) {
        this.f8303e.setImageBitmap(bitmap);
    }

    public BcSmartspaceCardGenericImage(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
