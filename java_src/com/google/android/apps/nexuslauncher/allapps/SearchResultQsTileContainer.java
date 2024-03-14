package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.Objects;
/* loaded from: classes.dex */
public class SearchResultQsTileContainer extends C0720y1 {

    /* renamed from: e  reason: collision with root package name */
    public int f6792e;

    /* renamed from: f  reason: collision with root package name */
    public final DeviceProfile f6793f;

    public SearchResultQsTileContainer(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean d() {
        return D2.h(this.f6792e, 4);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1, com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        super.e(c0653h1);
        setBackgroundColor(GraphicsUtils.getAttrColor(R.attr.materialColorSurfaceDim, getContext()));
        this.f6792e = D2.f((Bundle) Objects.requireNonNullElse(c0653h1.f7080a.getExtras(), new Bundle()));
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1
    public final void r(C0653h1 c0653h1, SearchTarget searchTarget, View view) {
        ((SearchResultQSTile) view).e(C0653h1.a(searchTarget));
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0011, code lost:
        if (r4 != false) goto L9;
     */
    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int s() {
        /*
            r4 = this;
            com.android.launcher3.DeviceProfile r4 = r4.f6793f
            boolean r0 = r4.isTablet
            boolean r1 = r4.isTwoPanels
            boolean r4 = r4.isLandscape
            com.android.launcher3.ConstantItem r2 = com.google.android.apps.nexuslauncher.allapps.C0719y0.f7256K
            r2 = 4
            r3 = 2
            if (r0 == 0) goto L19
            r0 = 3
            if (r1 == 0) goto L14
            if (r4 == 0) goto L1c
            goto L17
        L14:
            if (r4 == 0) goto L17
            goto L1d
        L17:
            r2 = r0
            goto L1d
        L19:
            if (r4 == 0) goto L1c
            goto L1d
        L1c:
            r2 = r3
        L1d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.SearchResultQsTileContainer.s():int");
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0720y1
    public final void t(View view) {
        ((SearchResultQSTile) view).r();
    }

    public SearchResultQsTileContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultQsTileContainer(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6792e = 0;
        this.f6793f = ((ActivityContext) this.f7294d.f7271d).getDeviceProfile();
    }
}
