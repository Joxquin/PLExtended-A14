package com.android.systemui.animation;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.View;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: e  reason: collision with root package name */
    public static final PorterDuffXfermode f6139e = new PorterDuffXfermode(PorterDuff.Mode.SRC);

    /* renamed from: a  reason: collision with root package name */
    public final o f6140a;

    /* renamed from: b  reason: collision with root package name */
    public final m f6141b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f6142c = new int[2];

    /* renamed from: d  reason: collision with root package name */
    public final float[] f6143d = new float[8];

    public s(o oVar, m mVar) {
        this.f6140a = oVar;
        this.f6141b = mVar;
    }

    public final boolean a(View launchContainer, n nVar) {
        kotlin.jvm.internal.h.e(launchContainer, "launchContainer");
        int[] iArr = this.f6142c;
        launchContainer.getLocationOnScreen(iArr);
        int i4 = nVar.f6091a;
        int i5 = iArr[1];
        if (i4 <= i5 && nVar.f6092b >= launchContainer.getHeight() + i5) {
            int i6 = nVar.f6093c;
            int i7 = iArr[0];
            if (i6 <= i7 && nVar.f6094d >= launchContainer.getWidth() + i7) {
                return true;
            }
        }
        return false;
    }
}
