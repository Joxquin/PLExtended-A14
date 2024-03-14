package com.google.android.systemui.smartspace;

import K2.C0039l;
import K2.t;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.android.systemui.shared.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class BcSmartspaceCardDoorbell extends BcSmartspaceCardGenericImage {

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ int f8294m = 0;

    /* renamed from: f  reason: collision with root package name */
    public final Map f8295f;

    /* renamed from: g  reason: collision with root package name */
    public int f8296g;

    /* renamed from: h  reason: collision with root package name */
    public ViewGroup f8297h;

    /* renamed from: i  reason: collision with root package name */
    public ProgressBar f8298i;

    /* renamed from: j  reason: collision with root package name */
    public ImageView f8299j;

    /* renamed from: k  reason: collision with root package name */
    public String f8300k;

    /* renamed from: l  reason: collision with root package name */
    public final C0039l f8301l;

    public BcSmartspaceCardDoorbell(Context context) {
        this(context, null);
    }

    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardGenericImage, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8297h = (ViewGroup) findViewById(R.id.loading_screen);
        this.f8298i = (ProgressBar) findViewById(R.id.indeterminateBar);
        this.f8299j = (ImageView) findViewById(R.id.loading_screen_icon);
    }

    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardGenericImage, K2.AbstractC0041n
    public final void s() {
        super.s();
        t.f(this.f8303e, 8);
        t.f(this.f8297h, 8);
        t.f(this.f8298i, 8);
        t.f(this.f8299j, 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02e0  */
    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardGenericImage, K2.AbstractC0041n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean t(android.app.smartspace.SmartspaceTarget r15, n1.d r16, L2.d r17) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.systemui.smartspace.BcSmartspaceCardDoorbell.t(android.app.smartspace.SmartspaceTarget, n1.d, L2.d):boolean");
    }

    public final void w(SmartspaceTarget smartspaceTarget) {
        boolean z4 = !smartspaceTarget.getSmartspaceTargetId().equals(this.f8300k);
        this.f8300k = smartspaceTarget.getSmartspaceTargetId();
        if (z4) {
            this.f8303e.getLayoutParams().width = -2;
            this.f8303e.setImageDrawable(null);
            ((HashMap) this.f8295f).clear();
        }
    }

    public BcSmartspaceCardDoorbell(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8295f = new HashMap();
        this.f8296g = 200;
        this.f8301l = new C0039l(context);
    }
}
